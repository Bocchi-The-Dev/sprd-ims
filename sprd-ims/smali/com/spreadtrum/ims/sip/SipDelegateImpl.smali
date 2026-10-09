.class public Lcom/spreadtrum/ims/sip/SipDelegateImpl;
.super Ljava/lang/Object;
.source "SipDelegateImpl.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;
    }
.end annotation


# static fields
.field private static final CALL_ID_LIST_LENGTH:I = 0xa

.field private static final EVENT_FEATURE_REGISTRATION_CHANGED:I = 0x64

.field private static final EVENT_IMS_CONFIGURATION_CHANGED:I = 0x65

.field private static final EVENT_SIP_MESSAGE_RECEIVED:I = 0x67

.field private static final EVENT_SIP_MESSAGE_SENT_RESULT:I = 0x66

.field private static final TAG:Ljava/lang/String;

.field private static final VIA_BRANCH_LIST_LENGTH:I = 0xa


# instance fields
.field private mCallIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private mContext:Landroid/content/Context;

.field private mDelegateId:I

.field private mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

.field private final mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

.field private mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

.field private mIImsServiceEx:Lcom/android/ims/internal/IImsServiceEx;

.field private mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mIsImsListenerRegistered:Z

.field private final mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private mPhoneId:I

.field private final mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field private mSubId:I

.field private mViaBranchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monConfigurationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFeatureRegistrationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onFeatureRegistrationChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessageReceived(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendSipMessageResult(Lcom/spreadtrum/ims/sip/SipDelegateImpl;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->onSendSipMessageResult(ILjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsServiceImpl;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    .line 71
    iput p3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mSubId:I

    .line 72
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p3

    iput p3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mPhoneId:I

    .line 73
    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 75
    iput-object p4, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    .line 76
    iput-object p5, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 77
    iput-object p6, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 78
    invoke-virtual {p2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 79
    new-instance p1, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;-><init>(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    .line 81
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p5, p0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 82
    invoke-direct {p0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->updateDelegateRegistrationState()V

    .line 84
    invoke-direct {p0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->registerForAllEvents()V

    .line 86
    return-void
.end method

.method private needSaveCallId(Ljava/lang/String;)Z
    .locals 2

    .line 266
    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 267
    const-string v0, "INVITE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUBSCRIBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 269
    :cond_2
    return v1
.end method

.method private onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 192
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 193
    return-void
.end method

.method private onFeatureRegistrationChanged(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/FeatureTagState;

    .line 176
    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    if-gez v2, :cond_1

    .line 179
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    .line 183
    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 185
    :cond_3
    :goto_1
    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 187
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 188
    return-void
.end method

.method private onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    nop

    .line 217
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 220
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    return-void

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 226
    return-void
.end method

.method private onSendSipMessageResult(ILjava/lang/String;I)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSipMessageResult  delegateId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 199
    :cond_0
    if-gez p3, :cond_1

    .line 200
    iget-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {p1, p2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {p1, p2, p3}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 205
    :goto_0
    return-void
.end method

.method private registerForAllEvents()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForFeatureTagRegistrationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForSendSipMessageResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForReceiveSipMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private unregisterForAllEvents()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForFeatureTagRegistrationChanged(Landroid/os/Handler;)V

    .line 98
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForImsConfigurationChanged(Landroid/os/Handler;)V

    .line 99
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForSendSipMessageResult(Landroid/os/Handler;)V

    .line 100
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForReceiveSipMessage(Landroid/os/Handler;)V

    .line 102
    return-void
.end method

.method private updateDelegateRegistrationState()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    const/4 v3, 0x2

    .line 166
    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRegistrationState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-interface {v0, v1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 171
    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession  callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public destroyDelegate(I)V
    .locals 1

    .line 113
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    .line 114
    invoke-direct {p0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->unregisterForAllEvents()V

    .line 115
    iget-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 116
    return-void
.end method

.method public getFeatureTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mHandler:Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .line 283
    sget-object v0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError  viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived  viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x9

    invoke-interface {p2, p1, p3}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v0

    cmp-long p2, p2, v0

    const/16 p3, 0xa

    if-eqz p2, :cond_1

    .line 126
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 128
    return-void

    .line 131
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    .line 132
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mViaBranchs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->needSaveCallId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 137
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, p3, :cond_3

    .line 138
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    :cond_3
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mCallIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_4
    iget-object p2, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mImsRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget p3, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->sendSipMessage(ILandroid/telephony/ims/SipMessage;Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public setConfig(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 275
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->mDelegateId:I

    .line 106
    return-void
.end method
