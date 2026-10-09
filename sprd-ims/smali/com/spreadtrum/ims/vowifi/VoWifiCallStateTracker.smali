.class public Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;
.super Ljava/lang/Object;
.source "VoWifiCallStateTracker.java"


# static fields
.field public static final ACTION_ACCEPT:I = 0x3

.field public static final ACTION_HOLD:I = 0x6

.field public static final ACTION_INCOMING:I = 0x2

.field public static final ACTION_REJECT:I = 0x4

.field public static final ACTION_RESUME:I = 0x7

.field public static final ACTION_START:I = 0x1

.field public static final ACTION_TERMINATE:I = 0x5

.field public static final ACTION_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionResponse:I

.field private final mDriection:I

.field private mRequestAction:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mState:I

    .line 34
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    .line 40
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mState:I

    .line 41
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mDriection:I

    .line 42
    return-void
.end method

.method private varargs isAcceptEvent(I[I)Z
    .locals 4

    .line 246
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 247
    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 246
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    return v1
.end method


# virtual methods
.method public getCallState()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mState:I

    return v0
.end method

.method public getRequest()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    return v0
.end method

.method public getSRVCCCallDirection()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mDriection:I

    return v0
.end method

.method public getSRVCCCallHoldState()I
    .locals 4

    .line 99
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    const/16 v3, 0x6a

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_1

    .line 104
    :cond_0
    return v1

    .line 105
    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd4

    if-ne v0, v2, :cond_2

    .line 110
    return v1

    .line 112
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getSRVCCCallState()I
    .locals 4

    .line 53
    nop

    .line 55
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    const/16 v1, 0x68

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 83
    goto :goto_3

    .line 80
    :pswitch_0
    const/4 v2, 0x7

    .line 81
    goto :goto_3

    .line 72
    :pswitch_1
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    if-ne v0, v1, :cond_0

    .line 73
    goto :goto_3

    .line 75
    :cond_0
    const/4 v2, 0x5

    .line 77
    goto :goto_3

    .line 69
    :pswitch_2
    const/4 v2, 0x4

    .line 70
    goto :goto_3

    .line 57
    :pswitch_3
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    const/16 v3, 0x66

    if-eq v0, v3, :cond_6

    const/16 v3, 0xc9

    if-ne v0, v3, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    const/16 v3, 0x67

    if-eq v0, v3, :cond_5

    const/16 v3, 0xca

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    if-eq v0, v1, :cond_4

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 65
    :cond_4
    :goto_0
    goto :goto_3

    .line 62
    :cond_5
    :goto_1
    const/4 v2, 0x2

    goto :goto_3

    .line 59
    :cond_6
    :goto_2
    const/4 v2, 0x1

    .line 87
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSRVCCNoResponseAction()I
    .locals 3

    .line 117
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 119
    :cond_0
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    packed-switch v0, :pswitch_data_0

    .line 128
    return v1

    .line 125
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMOCall()Z
    .locals 1

    .line 95
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mDriection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    packed-switch v1, :pswitch_data_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Unknown request["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :pswitch_0
    const-string v1, ", Request[resume]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    goto :goto_0

    .line 229
    :pswitch_1
    const-string v1, ", Request[hold]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    goto :goto_0

    .line 226
    :pswitch_2
    const-string v1, ", Request[terminate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    goto :goto_0

    .line 223
    :pswitch_3
    const-string v1, ", Request[reject]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    goto :goto_0

    .line 220
    :pswitch_4
    const-string v1, ", Request[accept]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto :goto_0

    .line 217
    :pswitch_5
    const-string v1, ", Request[incoming]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    goto :goto_0

    .line 214
    :pswitch_6
    const-string v1, ", Request[start]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    nop

    .line 239
    :goto_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    if-lez v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Response event code["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateActionResponse(I)V
    .locals 4

    .line 147
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update the response with the event code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The event code do not accept. Please check, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isAcceptEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    goto :goto_0

    .line 181
    :pswitch_1
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isAcceptEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isAcceptEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    goto :goto_0

    .line 168
    :pswitch_3
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x68

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isAcceptEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    goto :goto_0

    .line 156
    :pswitch_4
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->isAcceptEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    .line 200
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update the response event code finished. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x6c
        0x6d
        0xd4
        0xd5
    .end array-data

    :array_1
    .array-data 4
        0x6a
        0x6b
        0xd2
        0xd3
    .end array-data

    :array_2
    .array-data 4
        0x69
        0xcc
    .end array-data

    :array_3
    .array-data 4
        0x66
        0x67
        0x68
        0xc9
        0xca
        0xcb
    .end array-data
.end method

.method public updateCallState(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mState:I

    .line 50
    return-void
.end method

.method public updateRequestAction(I)V
    .locals 1

    .line 132
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 136
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mRequestAction:I

    .line 138
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallStateTracker;->mActionResponse:I

    .line 139
    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not accept this request action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
