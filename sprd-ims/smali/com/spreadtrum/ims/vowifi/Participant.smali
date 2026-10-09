.class public Lcom/spreadtrum/ims/vowifi/Participant;
.super Ljava/lang/Object;
.source "Participant.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_NORMAL:I = 0x1

.field private static final TYPE_SESSION:I = 0x2

.field private static final USER_SEP:Ljava/lang/String; = "@"


# instance fields
.field private mCallee:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayText:Ljava/lang/String;

.field private mEndPoint:Ljava/lang/String;

.field private mNotified:Z

.field private mSecondaryCallee:Ljava/lang/String;

.field private mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mStatus:Ljava/lang/String;

.field private final mType:I

.field private final mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/spreadtrum/ims/vowifi/Participant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Participant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 1

    .line 59
    const-string v0, "pending"

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mNotified:Z

    .line 63
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mContext:Landroid/content/Context;

    .line 64
    const/4 p1, 0x2

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mType:I

    .line 65
    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mUser:Ljava/lang/String;

    .line 69
    const-string p1, ""

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mDisplayText:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getSecondaryCallee()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getSecondaryCallee()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mEndPoint:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 44
    const-string v0, "pending"

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/Participant;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mNotified:Z

    .line 48
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mContext:Landroid/content/Context;

    .line 49
    const/4 p1, 0x1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mType:I

    .line 50
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mUser:Ljava/lang/String;

    .line 53
    const-string p1, ""

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mDisplayText:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mEndPoint:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 231
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCardSubId(Landroid/content/Context;)I

    move-result v0

    .line 232
    nop

    .line 233
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 234
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getSRVCCCallDir()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallStateTracker()Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->getSRVCCCallDirection()I

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSRVCCCallState()I
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "connect-fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "alerting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "disconnecting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "dialing-out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 207
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Participant;->TAG:Ljava/lang/String;

    const-string v1, "Do not find matched status to get SRVCC call state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v4

    .line 205
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 201
    :pswitch_1
    return v4

    .line 199
    :pswitch_2
    return v2

    .line 197
    :pswitch_3
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x525651c5 -> :sswitch_6
        -0x2fb8ce8d -> :sswitch_5
        -0x28af7669 -> :sswitch_4
        -0x22860cf7 -> :sswitch_3
        0x78c29c6 -> :sswitch_2
        0x60494106 -> :sswitch_1
        0x6f4e8221 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSRVCCNumberType()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vowifi/Participant;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x3

    return v0

    .line 226
    :cond_1
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfStateBundle()Landroid/os/Bundle;
    .locals 3

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mUser:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mDisplayText:Ljava/lang/String;

    const-string v2, "display-text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mEndPoint:Ljava/lang/String;

    const-string v2, "endpoint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v0
.end method

.method public getDisplayForConfState()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPointForConfState()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCallee()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSecondaryCallee:Ljava/lang/String;

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getSecondaryCallee()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSecondaryCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusForConfState()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserForConfState()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public isMatched(Ljava/lang/String;)Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->isSameCallee(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isMatched(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 100
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/Participant;->isMatched(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNotifiedUserInfo()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mNotified:Z

    return v0
.end method

.method public notifiedUserInfo()V
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mNotified:Z

    .line 113
    return-void
.end method

.method public prepareSRVCCSyncInfo(Ljava/util/ArrayList;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Participant;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare the SRVCC sync info for the participant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v1, Lcom/android/ims/internal/ImsSrvccCallInfo;

    invoke-direct {v1}, Lcom/android/ims/internal/ImsSrvccCallInfo;-><init>()V

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallId:I

    .line 145
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Participant;->getSRVCCCallDir()I

    move-result v2

    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mDir:I

    .line 146
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Participant;->getSRVCCCallState()I

    move-result v2

    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallState:I

    .line 149
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v3

    :goto_0
    iput p3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mHoldState:I

    .line 151
    iput v2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mMptyState:I

    .line 152
    iput p2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mMptyOrder:I

    .line 154
    iput v3, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mCallType:I

    .line 155
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Participant;->getSRVCCNumberType()I

    move-result p2

    iput p2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mNumType:I

    .line 156
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/ims/internal/ImsSrvccCallInfo;->mNumber:Ljava/lang/String;

    .line 157
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Success to prepare the participant\'s info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public setSecondaryCallee(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSecondaryCallee:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Participant["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mDisplayText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEndPointForConfState(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mEndPoint:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public updateStatusForConfState(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Participant;->mStatus:Ljava/lang/String;

    .line 183
    return-void
.end method
