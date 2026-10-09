.class public Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;,
        Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;,
        Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;,
        Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;,
        Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;
    }
.end annotation


# static fields
.field private static final CF_QUERY_SERVICE_CLASS_VIDEO:I = 0x2

.field private static final CF_RESULT_SERVICE_CLASS_VIDEO:I = 0x2

.field private static final CLIR_DEFAULT:I = 0x0

.field private static final CLIR_UNKNOWN:I = 0x2

.field private static final CMD_TIMEOUT:I = 0xea60

.field private static final DELAY_DISALBE_UT:I = 0x3a98

.field private static final MSG_ACTION_CHANGE_LOCK_PWD:I = 0x6f

.field private static final MSG_ACTION_QUERY_CALL_BARRING:I = 0x65

.field private static final MSG_ACTION_QUERY_CALL_FORWARD:I = 0x66

.field private static final MSG_ACTION_QUERY_CALL_FORWARDING_OPTION:I = 0x67

.field private static final MSG_ACTION_QUERY_CALL_WAITING:I = 0x68

.field private static final MSG_ACTION_QUERY_CLIP:I = 0x70

.field private static final MSG_ACTION_QUERY_CLIR:I = 0x71

.field private static final MSG_ACTION_QUERY_COLP:I = 0x72

.field private static final MSG_ACTION_QUERY_COLR:I = 0x73

.field private static final MSG_ACTION_QUERY_FACILITY_LOCK:I = 0x6e

.field private static final MSG_ACTION_SET_FACILITY_LOCK:I = 0x6d

.field private static final MSG_ACTION_UPDATE_CALL_BARRING:I = 0x69

.field private static final MSG_ACTION_UPDATE_CALL_FORWARD:I = 0x6a

.field private static final MSG_ACTION_UPDATE_CALL_FORWARDING_OPTION:I = 0x6b

.field private static final MSG_ACTION_UPDATE_CALL_WAITING:I = 0x6c

.field private static final MSG_ACTION_UPDATE_CLIP:I = 0x74

.field private static final MSG_ACTION_UPDATE_CLIR:I = 0x75

.field private static final MSG_ACTION_UPDATE_COLP:I = 0x76

.field private static final MSG_ACTION_UPDATE_COLR:I = 0x77

.field private static final MSG_CMD_TIMEOUT:I = 0x0

.field private static final MSG_DISABLE_UT:I = -0x2

.field private static final MSG_HANDLE_EVENT:I = -0x1

.field private static final MSG_PROCESS_PENDING:I = -0x3

.field private static final PROP_KEY_SS_CLIR:Ljava/lang/String; = "gsm.ss.clir"

.field private static final SERVICE_CLASS_COMPLEX:I = 0x3

.field private static final SERVICE_CLASS_NO_DEFINED:I = 0x0

.field private static final SERVICE_CLASS_VOICE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"


# instance fields
.field private mCBIncomingInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCBOutgoingInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCBQueried:Z

.field private mCFInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCFQueried:Z

.field private mCLIRQueried:Z

.field private mCWQueried:Z

.field private mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

.field private mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

.field private mIUT:Lcom/android/ims/internal/IVoWifiUT;

.field private mIUTChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

.field private mPhoneId:I

.field private mSubId:I

.field private mUtEnabled:Z

.field private mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

.field private mUtServiceCallback:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCmdManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIUT(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IVoWifiUT;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUtManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUtServiceCallback(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtServiceCallback:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIUT(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Lcom/android/ims/internal/IVoWifiUT;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindCallBarringInfo(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/util/ArrayList;II)[I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->findCallBarringInfo(Ljava/util/ArrayList;II)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetActionFromCFAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getActionFromCFAction(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetConditionFromCFReason(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->handleEvent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeChangeBarringPwd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeChangeBarringPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeQueryCLIR(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeQueryCLIR()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeQueryCallBarring(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeQueryCallBarring(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeQueryCallForward(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeQueryCallForward()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeQueryCallWaiting(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeQueryCallWaiting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeUpdateCLIR(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeUpdateCLIR(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeUpdateCallBarring(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;IZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeUpdateCallBarring(IZLjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeUpdateCallForward(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;IILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeUpdateCallForward(IILjava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeUpdateCallWaiting(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->nativeUpdateCallWaiting(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;I)V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    .line 85
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCWQueried:Z

    .line 92
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFQueried:Z

    .line 93
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBQueried:Z

    .line 94
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCLIRQueried:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    .line 97
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    .line 98
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    .line 100
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 101
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    .line 103
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    .line 104
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    .line 105
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    .line 106
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    .line 107
    new-instance v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;

    invoke-direct {v1, p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback-IA;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtServiceCallback:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;

    .line 138
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    .line 250
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUTChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    .line 293
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 294
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    .line 295
    iput p3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    .line 296
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-direct {p1, p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    .line 299
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUTChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->registerUTInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;)Z

    .line 301
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UT"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 303
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 304
    new-instance p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    .line 305
    return-void
.end method

.method private findCallBarringInfo(Ljava/util/ArrayList;II)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;II)[I"
        }
    .end annotation

    .line 1319
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1320
    nop

    .line 1321
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;

    .line 1322
    iget v3, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mCondition:I

    if-ne v3, p2, :cond_0

    .line 1323
    nop

    .line 1324
    goto :goto_1

    .line 1326
    :cond_0
    goto :goto_0

    .line 1321
    :cond_1
    move-object v1, v2

    .line 1328
    :goto_1
    if-eqz v1, :cond_2

    .line 1329
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found the matched CB info: [condition="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mCondition:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", status="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mStatus:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", serviceClass="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 p1, 0x0

    iget p2, v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mStatus:I

    aput p2, v0, p1

    .line 1332
    const/4 p1, 0x1

    aput p3, v0, p1

    .line 1333
    return-object v0

    .line 1336
    :cond_2
    return-object v2
.end method

.method private getActionFromCFAction(I)I
    .locals 0

    .line 1408
    packed-switch p1, :pswitch_data_0

    .line 1421
    :pswitch_0
    const/4 p1, -0x1

    return p1

    .line 1414
    :pswitch_1
    const/4 p1, 0x4

    return p1

    .line 1416
    :pswitch_2
    const/4 p1, 0x3

    return p1

    .line 1412
    :pswitch_3
    const/4 p1, 0x1

    return p1

    .line 1410
    :pswitch_4
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getCBDirectionFromCondition(I)I
    .locals 3

    .line 1391
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 1396
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 1403
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not accept this call barring condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 p1, 0x0

    return p1

    .line 1400
    :cond_2
    :goto_0
    return v0

    .line 1395
    :cond_3
    :goto_1
    return v0
.end method

.method private getCFContainsItems(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1259
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 1260
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_2
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getCFItem(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    goto :goto_2

    .line 1276
    :cond_3
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The CF must contains items size is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return-object p1
.end method

.method private getCFItem(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getConditionFromCBReason(Ljava/lang/String;)I
    .locals 4

    .line 1362
    const-string v0, "invalid call barring sc"

    if-eqz p1, :cond_8

    .line 1365
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConditionFromCBReason the reason is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 1368
    return v2

    .line 1369
    :cond_0
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    const/4 p1, 0x3

    return p1

    .line 1371
    :cond_1
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1372
    const/4 p1, 0x4

    return p1

    .line 1373
    :cond_2
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1374
    return v3

    .line 1375
    :cond_3
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1376
    const/4 p1, 0x5

    return p1

    .line 1377
    :cond_4
    const-string v1, "AB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1378
    const/4 p1, 0x7

    return p1

    .line 1379
    :cond_5
    const-string v1, "AG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1381
    return v2

    .line 1382
    :cond_6
    const-string v1, "AC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1384
    return v3

    .line 1386
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1363
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getConditionFromCFReason(I)I
    .locals 0

    .line 1341
    packed-switch p1, :pswitch_data_0

    .line 1358
    const/4 p1, -0x1

    return p1

    .line 1353
    :pswitch_0
    const/4 p1, 0x5

    return p1

    .line 1351
    :pswitch_1
    const/4 p1, 0x4

    return p1

    .line 1349
    :pswitch_2
    const/4 p1, 0x3

    return p1

    .line 1347
    :pswitch_3
    const/4 p1, 0x2

    return p1

    .line 1345
    :pswitch_4
    const/4 p1, 0x1

    return p1

    .line 1343
    :pswitch_5
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getInfoFromItem(Ljava/lang/String;)[I
    .locals 3

    .line 1285
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1286
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    return-object v0
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 7

    .line 992
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 993
    const-string v1, "event_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    sget-object v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle the event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v1, "event_code"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 997
    const/4 v3, 0x2

    const/16 v4, 0x324

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1041
    :pswitch_1
    const-string p1, "Query CLIR finished, the result is OK."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iput-boolean v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCLIRQueried:Z

    .line 1043
    const-string p1, "ut_clir_m_param"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1044
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCLIRFinished(I)V

    .line 1045
    goto/16 :goto_1

    .line 1050
    :pswitch_2
    const-string p1, "Update action finished, the result is ok."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onUpdateActionSuccessed()V

    .line 1052
    goto/16 :goto_1

    .line 1034
    :pswitch_3
    const-string p1, "Query call waiting finished, the result is OK."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iput-boolean v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCWQueried:Z

    .line 1036
    const-string p1, "ut_enabled"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1037
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallWaitingFinished(Z)V

    .line 1038
    goto/16 :goto_1

    .line 999
    :pswitch_4
    const-string v0, "Query call forward finished, the result is OK."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput-boolean v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFQueried:Z

    .line 1001
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->parseCallForwardInfos(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallForwardFinished(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 1005
    :cond_0
    const-string p1, "As CF info is null, handle as action failed."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1008
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1010
    goto/16 :goto_1

    .line 1062
    :pswitch_5
    const-string p1, "Query or update action finished, but the result is failed."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string p1, "state_code"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1064
    const v0, 0xd00b

    if-ne p1, v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->switchNextDns()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->-$$Nest$fputmHandleCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;Z)V

    .line 1070
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->-$$Nest$mprocessPendingAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1072
    goto/16 :goto_1

    .line 1070
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1077
    goto :goto_1

    .line 1013
    :pswitch_6
    const-string v1, "Query call barring finished, the result is OK."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iput-boolean v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBQueried:Z

    .line 1015
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->parseCallBarringInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1016
    if-eqz p1, :cond_4

    .line 1017
    const-string v1, "ub_cb_dir"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1018
    if-ne v0, v6, :cond_2

    .line 1019
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 1020
    :cond_2
    if-ne v0, v3, :cond_3

    .line 1021
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    .line 1024
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallBarringFinished(Ljava/util/ArrayList;)V

    .line 1025
    goto :goto_1

    .line 1026
    :cond_4
    const-string p1, "As CB info is null, handle as action failed."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1029
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1031
    goto :goto_1

    .line 1082
    :catch_0
    move-exception p1

    .line 1083
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle the event as catch the RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1080
    :catch_1
    move-exception p1

    .line 1081
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle the event as catch the JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_1
    nop

    .line 1085
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x15f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isCFConditionMatched(II)Z
    .locals 2

    .line 1290
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1292
    return v0

    .line 1293
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 1297
    return v0

    .line 1299
    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nativeChangeBarringPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 963
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Native change the call barring password to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method private nativeQueryCLIR()V
    .locals 5

    .line 772
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native query the CLIR."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    nop

    .line 776
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 777
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiUT;->queryCLIR()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    move v2, v0

    :goto_0
    goto :goto_1

    .line 780
    :catch_0
    move-exception v1

    .line 781
    sget-object v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query the CLIR as catch the RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 785
    :goto_1
    if-nez v2, :cond_1

    .line 786
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v2, "Native failed to query the CLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x324

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 789
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 791
    :cond_1
    return-void
.end method

.method private nativeQueryCallBarring(I)V
    .locals 4

    .line 794
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native query the call barring options."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    nop

    .line 798
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getCBDirectionFromCondition(I)I

    move-result v1

    .line 799
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 802
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallBarringFinished(Ljava/util/ArrayList;)V

    .line 803
    goto :goto_0

    .line 804
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 807
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallBarringFinished(Ljava/util/ArrayList;)V

    .line 808
    goto :goto_0

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    if-eqz v1, :cond_2

    .line 811
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiUT;->queryCallBarring(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 817
    :cond_2
    move v2, v0

    :goto_0
    goto :goto_1

    .line 815
    :catch_0
    move-exception p1

    .line 816
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query the call barring as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 820
    :goto_1
    if-nez v2, :cond_3

    .line 821
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native failed to query the call barring."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 824
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 826
    :cond_3
    return-void
.end method

.method private nativeQueryCallForward()V
    .locals 5

    .line 829
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native query the call forward options."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    nop

    .line 833
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 835
    const-string v2, "Exist CF infos, just handle the result directly."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onQueryCallForwardFinished(Ljava/util/HashMap;)V

    .line 837
    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    if-eqz v0, :cond_1

    .line 840
    invoke-interface {v0}, Lcom/android/ims/internal/IVoWifiUT;->queryCallForward()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 846
    :cond_1
    move v3, v1

    :goto_0
    goto :goto_1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    sget-object v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query the call forward as catch the RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 849
    :goto_1
    if-nez v3, :cond_2

    .line 850
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v2, "Native failed to query the call forward."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x324

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 853
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 855
    :cond_2
    return-void
.end method

.method private nativeQueryCallWaiting()V
    .locals 5

    .line 858
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native query the call waiting options."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    nop

    .line 862
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 863
    invoke-interface {v1}, Lcom/android/ims/internal/IVoWifiUT;->queryCallWaiting()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    move v2, v0

    :goto_0
    goto :goto_1

    .line 866
    :catch_0
    move-exception v1

    .line 867
    sget-object v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query the call waiting as catch the RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 871
    :goto_1
    if-nez v2, :cond_1

    .line 872
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v2, "Native failed to query the call waiting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x324

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 875
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 877
    :cond_1
    return-void
.end method

.method private nativeUpdateCLIR(I)V
    .locals 4

    .line 967
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native update the CLIR as mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    nop

    .line 971
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 972
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiUT;->updateCLIR(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    if-ne p1, v2, :cond_0

    .line 974
    goto :goto_0

    .line 979
    :cond_0
    move v2, v0

    :goto_0
    goto :goto_1

    .line 977
    :catch_0
    move-exception p1

    .line 978
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update CLIR as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 982
    :goto_1
    if-nez v2, :cond_1

    .line 983
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native failed to update CLIR."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 986
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 988
    :cond_1
    return-void
.end method

.method private nativeUpdateCallBarring(IZLjava/lang/String;I)V
    .locals 3

    .line 882
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native update the call barring options, condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", barringList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    nop

    .line 889
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 890
    nop

    .line 891
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    const-string v1, ";"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 894
    :cond_0
    const-string p3, "false"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 896
    :goto_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/ims/internal/IVoWifiUT;->updateCallBarring(IZ[Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 901
    :cond_1
    move v2, v0

    :goto_1
    goto :goto_2

    .line 899
    :catch_0
    move-exception p1

    .line 900
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to query the call barring as catch the RemoteException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 904
    :goto_2
    if-nez v2, :cond_2

    .line 905
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string p2, "Native failed to update the call barring."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x324

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 908
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 910
    :cond_2
    return-void
.end method

.method private nativeUpdateCallForward(IILjava/lang/String;II)V
    .locals 8

    .line 915
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native update the call forward options, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    nop

    .line 922
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 923
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/ims/internal/IVoWifiUT;->updateCallForward(IILjava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    if-ne p1, v7, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    move v7, v0

    :goto_0
    goto :goto_1

    .line 927
    :catch_0
    move-exception p1

    .line 928
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to query the call forward as catch the RemoteException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    .line 932
    :goto_1
    if-nez v7, :cond_1

    .line 933
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string p2, "Native failed to update the call forward."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x324

    invoke-direct {p1, p2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 936
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 938
    :cond_1
    return-void
.end method

.method private nativeUpdateCallWaiting(Z)V
    .locals 4

    .line 941
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native update the call waiting as enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    nop

    .line 945
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 946
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IVoWifiUT;->updateCallWaiting(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    move v2, v0

    :goto_0
    goto :goto_1

    .line 949
    :catch_0
    move-exception p1

    .line 950
    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query the call waiting as catch the RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 954
    :goto_1
    if-nez v2, :cond_1

    .line 955
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Native failed to update the call waiting."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 958
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 960
    :cond_1
    return-void
.end method

.method private parseCallBarringInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1136
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse the CB infos from the json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    const-string p1, "Failed to parse the call barring info as the json string is empty."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 p1, 0x0

    return-object p1

    .line 1142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1145
    const-string p1, "ut_cb_rules"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1146
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1147
    nop

    .line 1148
    nop

    .line 1149
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1150
    const-string v4, "ut_cb_rule_enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1151
    const-string v6, "ut_cb_conditions"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1152
    nop

    .line 1153
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 1155
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    goto :goto_1

    .line 1157
    :cond_1
    sget-object v5, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The condition is abnormal, please check rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 1159
    :goto_1
    new-instance v5, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;

    invoke-direct {v5}, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;-><init>()V

    .line 1160
    invoke-virtual {v5, v3}, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->setCondition(I)V

    .line 1161
    invoke-virtual {v5, v4}, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->setStatus(I)V

    .line 1162
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_2
    return-object v0
.end method

.method private parseCallForwardInfos(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1089
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse the CF infos from the json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1091
    const-string p1, "Failed to parse the call forward info as the json string is empty."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-object v2

    .line 1095
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1097
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1098
    const-string p1, "ut_cf_time_seconds"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1099
    const-string v4, "ut_cf_rules"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1100
    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1101
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1102
    const-string v6, "ut_cf_rule_enabled"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1103
    const-string v8, "ut_cf_rule_media"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1104
    const-string v9, "ut_cf_conditions"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1105
    const-string v10, "ut_cf_action_target"

    invoke-virtual {v5, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1107
    new-instance v11, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 1108
    const/16 v12, 0x81

    iput v12, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 1109
    iput p1, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 1110
    iput v6, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 1111
    iput-object v10, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 1112
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1114
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_1

    .line 1116
    :cond_1
    sget-object v6, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The condition is abnormal, please check rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1119
    iput v3, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    goto :goto_2

    .line 1120
    :cond_2
    const-string v5, "audio"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1121
    iput v7, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    goto :goto_2

    .line 1122
    :cond_3
    const-string v5, "video"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1123
    const/4 v5, 0x2

    iput v5, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    goto :goto_2

    .line 1125
    :cond_4
    sget-object v5, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The rule\'s media is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", can not parse."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iput v3, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 1128
    :goto_2
    iget v5, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1131
    :cond_5
    return-object v0
.end method

.method private resetCBInfos()V
    .locals 2

    .line 1425
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1427
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBIncomingInfos:Ljava/util/ArrayList;

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1432
    iput-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBOutgoingInfos:Ljava/util/ArrayList;

    .line 1434
    :cond_1
    return-void
.end method

.method private resetCFInfos()V
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFInfos:Ljava/util/HashMap;

    .line 1441
    :cond_0
    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 737
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBarringPassword, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v8, v1

    const/4 p1, 0x1

    aput-object p2, v8, p1

    const/4 p1, 0x2

    aput-object p3, v8, p1

    const/4 v4, 0x1

    const-string v5, "changeBarringPassword"

    const/16 v6, 0x6f

    const v7, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 743
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 326
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    .line 327
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
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->close()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mUtManager:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mIUTChangedListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->unregisterUTInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;)Z

    .line 317
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 318
    return-void
.end method

.method public getCallForwardingOption(IILjava/lang/String;)I
    .locals 10

    .line 673
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the call forwarding option, call forward reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ruleSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    if-lez v1, :cond_0

    .line 680
    const-string v1, "Query the call forwarding for video, convert the service class to 256."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    add-int/lit8 p2, p2, -0x2

    add-int/2addr p2, v2

    .line 685
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v5, 0x1

    const/16 v7, 0x67

    const v8, 0xea60

    const/4 v1, 0x3

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, p1

    aput-object p3, v9, v2

    const-string v6, "getCallForwardingOption"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 688
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public initQueriedState()V
    .locals 3

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCWQueried:Z

    .line 748
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFQueried:Z

    .line 749
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBQueried:Z

    .line 750
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCLIRQueried:Z

    .line 752
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCFInfos()V

    .line 753
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCBInfos()V

    .line 757
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    .line 758
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind this UtImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    if-ltz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->close()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    .line 766
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    .line 767
    invoke-static {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getUtConfiguration(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    .line 769
    :cond_1
    return-void
.end method

.method public queryCLIP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do not support query CLIP now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIR()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to query the CLIR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCLIRSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support query CLIR for this sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, -0x1

    return v0

    .line 413
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v4, 0x71

    const v5, 0xea60

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v3, "queryCLIR"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 414
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result v0

    return v0
.end method

.method public queryCOLP()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do not support query COLP now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLR()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do not support query COLR now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 7

    .line 334
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to query the call barring with the type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCBSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support query CB for this sub: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 p1, -0x1

    return p1

    .line 341
    :cond_0
    new-instance v6, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v3, 0x65

    const v4, 0xea60

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string p1, "pwd"

    aput-object p1, v5, v2

    const/4 p1, 0x2

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    const-string v2, "queryCallBarring"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 7

    .line 350
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to query the call barring with the type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCBSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not support query CB for this sub: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 p1, -0x1

    return p1

    .line 359
    :cond_0
    new-instance v6, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v3, 0x65

    const v4, 0xea60

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "pwd"

    aput-object p1, v5, v2

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v2, "queryCallBarring"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 7

    .line 370
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to query the call forward as the condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for the number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCFSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not support query CF for this sub: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 p1, -0x1

    return p1

    .line 379
    :cond_0
    new-instance v6, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v3, 0x66

    const v4, 0xea60

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    aput-object p2, v5, v2

    const-string v2, "queryCallForward"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 381
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public queryCallWaiting()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v1, "Try to query the call waiting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCWSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support query CW for this sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, -0x1

    return v0

    .line 396
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v4, 0x68

    const v5, 0xea60

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v3, "queryCallWaiting"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result v0

    return v0
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    .line 724
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFacilityLock, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getConditionFromCBReason(Ljava/lang/String;)I

    move-result p1

    .line 729
    new-instance v7, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    .line 730
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    .line 731
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v6, p2

    const/4 v2, 0x1

    const-string v3, "queryFacilityLock"

    const/16 v4, 0x6e

    const v5, 0xea60

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 732
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v7}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I
    .locals 17

    .line 642
    move-object/from16 v9, p0

    move-object/from16 v0, p4

    move-object/from16 v7, p6

    sget-object v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set the call forwarding option, call forward action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", call forward reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", service class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", dial number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", time seconds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", ruleSet: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCFInfos()V

    .line 651
    new-instance v11, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v1, 0x6

    new-array v6, v1, [Ljava/lang/Object;

    .line 653
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v6, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v6, v14

    const/4 v15, 0x3

    aput-object v0, v6, v15

    .line 654
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v2, 0x1

    const-string v3, "setCallForwardingOption"

    const/16 v4, 0x6b

    const v5, 0xea60

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 656
    iget-boolean v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFQueried:Z

    if-nez v0, :cond_0

    .line 657
    new-instance v6, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x67

    const v16, 0xea60

    new-array v15, v15, [Ljava/lang/Object;

    .line 660
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v13

    aput-object v7, v15, v14

    const-string v4, "getCallForwardingOption"

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v10, v6

    move/from16 v6, v16

    move-object v7, v11

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 663
    iget-object v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v10}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 665
    :cond_0
    iget-object v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v11}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;I)I
    .locals 16

    .line 697
    move-object/from16 v9, p0

    move-object/from16 v7, p3

    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFacilityLock, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lock state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", password: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCBInfos()V

    .line 704
    invoke-direct/range {p0 .. p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getConditionFromCBReason(Ljava/lang/String;)I

    move-result v8

    .line 705
    new-instance v10, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    .line 706
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v6, v11

    .line 707
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v6, v12

    const-string v0, ""

    const/4 v13, 0x2

    aput-object v0, v6, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v14, 0x3

    aput-object v0, v6, v14

    const/4 v2, 0x1

    const-string v3, "setFacilityLock"

    const/16 v4, 0x6d

    const v5, 0xea60

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 709
    iget-boolean v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBQueried:Z

    if-nez v0, :cond_0

    .line 710
    new-instance v15, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x6e

    const v6, 0xea60

    new-array v14, v14, [Ljava/lang/Object;

    .line 712
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v11

    aput-object v7, v14, v12

    .line 713
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v13

    const-string v4, "queryFacilityLock"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v7, v10

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 716
    iget-object v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v15}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 719
    :cond_0
    iget-object v0, v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, v10}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 626
    return-void
.end method

.method public setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    .line 630
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1

    .line 450
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "The vowifi do not support the transact function now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 p1, -0x1

    return p1
.end method

.method public updateCLIP(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "Do not support update CLIP now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 p1, -0x1

    return p1
.end method

.method public updateCLIR(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update CLIR to mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCLIRSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support update CLIR for this sub: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 p1, -0x1

    return p1

    .line 569
    :cond_0
    new-instance v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v3, 0x75

    const v4, 0xea60

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v2, "updateCLIR"

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 572
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCLIRQueried:Z

    if-nez p1, :cond_1

    .line 573
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x71

    const v7, 0xea60

    new-array v8, v6, [Ljava/lang/Object;

    const-string v4, "queryCLIR"

    move-object v0, p1

    move-object v1, p0

    move v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 580
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v9}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public updateCOLP(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "Do not support update COLP now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 p1, -0x1

    return p1
.end method

.method public updateCOLR(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string v0, "Do not support update COLR now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 p1, -0x1

    return p1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 12

    .line 460
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update the call barring with the type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", barringList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 461
    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/Utilities;->getStringFromArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 460
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCBSupport(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not support update CB for this sub: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 p1, -0x1

    return p1

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCBInfos()V

    .line 474
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p3

    .line 475
    :goto_0
    new-instance v11, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v5, 0x69

    const v6, 0xea60

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Object;

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v7, v0

    const-string p2, ""

    aput-object p2, v7, v1

    const/4 p2, 0x3

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, p2

    const-string v4, "updateCallBarring"

    move-object v2, v11

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 479
    iget-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCBQueried:Z

    if-nez p2, :cond_2

    .line 480
    new-instance p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x65

    const v8, 0xea60

    new-array v10, v0, [Ljava/lang/Object;

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, p3

    const-string v6, "queryCallBarring"

    move-object v2, p2

    move-object v3, p0

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 485
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 487
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v11}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string p2, "Do not support update CB for service class now."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 p1, -0x1

    return p1
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 616
    sget-object p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    const-string p2, "Do not support update updateCallBarringWithPassword."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 p1, -0x1

    return p1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 10

    .line 504
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update the call forward with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCFSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not support update CF for this sub: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 p1, -0x1

    return p1

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->resetCFInfos()V

    .line 516
    new-instance v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v6, 0x6a

    const v7, 0xea60

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v8, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v8, v1

    aput-object p3, v8, v2

    const/4 p1, 0x3

    .line 518
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v8, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v8, p1

    const-string v5, "updateCallForward"

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 520
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCFQueried:Z

    if-nez p1, :cond_1

    .line 521
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 p4, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x66

    const v6, 0xea60

    new-array v8, v2, [Ljava/lang/Object;

    .line 523
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v8, v0

    aput-object p3, v8, v1

    const-string v4, "queryCallForward"

    move-object v0, p1

    move-object v1, p0

    move v2, p4

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 526
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v9}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method

.method public updateCallWaiting(ZI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to update the call waiting to enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mConfiguration:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->isCWSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not support update CW for this sub: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 p1, -0x1

    return p1

    .line 543
    :cond_0
    new-instance v9, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/16 v3, 0x6c

    const v4, 0xea60

    new-array v5, v2, [Ljava/lang/Object;

    .line 544
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v2, "updateCallWaiting"

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 546
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCWQueried:Z

    if-nez p1, :cond_1

    .line 547
    new-instance p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x68

    const p2, 0xea60

    new-array v8, v6, [Ljava/lang/Object;

    const-string v4, "queryCallWaiting"

    move-object v0, p1

    move-object v1, p0

    move v6, p2

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 552
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->mCmdManager:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-virtual {p1, v9}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I

    move-result p1

    return p1
.end method
