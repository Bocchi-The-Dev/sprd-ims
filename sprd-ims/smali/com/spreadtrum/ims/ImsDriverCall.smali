.class public Lcom/spreadtrum/ims/ImsDriverCall;
.super Lcom/android/internal/telephony/DriverCall;
.source "ImsDriverCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/ImsDriverCall$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field static final PRESENTATION_ACCEPT:I = 0x3

.field static final PRESENTATION_INVALID:I = 0x0

.field static final PRESENTATION_REJECT:I = 0x4

.field static final PRESENTATION_REQUEST:I = 0x2

.field static final PRESENTATION_VALID:I = 0x1

.field public static final RTT_CALL_MEDIA_DIRECTION_INVALID:I = 0x7d0

.field public static final RTT_CALL_MEDIA_DIRECTION_RECVONLY:I = 0x7d3

.field public static final RTT_CALL_MEDIA_DIRECTION_SENDONLY:I = 0x7d2

.field public static final RTT_CALL_MEDIA_DIRECTION_SENDRECV:I = 0x7d1

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_ALERTING:I = 0x3

.field public static final STATE_DIALING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x1

.field public static final STATE_INCOMING:I = 0x4

.field public static final STATE_WAITING:I = 0x5

.field public static final VIDEO_CALL_MEDIA_DIRECTION_INVALID:I = 0x3e8

.field public static final VIDEO_CALL_MEDIA_DIRECTION_RECVONLY:I = 0x3eb

.field public static final VIDEO_CALL_MEDIA_DIRECTION_SENDONLY:I = 0x3ea

.field public static final VIDEO_CALL_MEDIA_DIRECTION_SENDRECV:I = 0x3e9


# instance fields
.field public TOA:I

.field public als:I

.field public cliValidityPresent:I

.field public csMode:I

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public mediaDescription:Ljava/lang/String;

.field public mptyState:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public negStatus:I

.field public negStatusPresent:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public priority:I

.field public prioritypresent:I

.field public state:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/ImsDriverCall;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 147
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 148
    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    .line 149
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 150
    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    .line 151
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    .line 152
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    .line 153
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    .line 154
    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    .line 155
    iget-boolean v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    .line 156
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    .line 157
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    .line 158
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    .line 159
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    .line 160
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 161
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    .line 162
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    .line 163
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 164
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    .line 165
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    .line 166
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    .line 167
    iget v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    iput v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    .line 168
    iget p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    iput p1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    .line 169
    return-void
.end method

.method public static ConferenceStringToState(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;
    .locals 1

    .line 267
    const-string v0, "connected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 269
    :cond_0
    const-string v0, "on-hold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 271
    :cond_1
    const-string v0, "dialing-out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 273
    :cond_2
    const-string v0, "alerting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 275
    :cond_3
    const-string v0, "dialing-in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 277
    :cond_4
    const-string v0, "disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 278
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 280
    :cond_5
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 286
    packed-switch p0, :pswitch_data_0

    .line 292
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    const/4 p0, 0x4

    return p0

    .line 289
    :pswitch_1
    const/4 p0, 0x3

    return p0

    .line 288
    :pswitch_2
    const/4 p0, 0x2

    return p0

    .line 287
    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stateFromCLCCS(I)Lcom/spreadtrum/ims/ImsDriverCall$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 214
    packed-switch p0, :pswitch_data_0

    .line 223
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 220
    :pswitch_1
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 219
    :pswitch_2
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 218
    :pswitch_3
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 217
    :pswitch_4
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 216
    :pswitch_5
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    .line 215
    :pswitch_6
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stateToConferenceString(Lcom/spreadtrum/ims/ImsDriverCall$State;)Ljava/lang/String;
    .locals 2

    .line 249
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v1, "connected"

    if-ne p0, v0, :cond_0

    .line 250
    return-object v1

    .line 251
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_1

    .line 252
    const-string p0, "on-hold"

    return-object p0

    .line 253
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_2

    .line 254
    const-string p0, "dialing-out"

    return-object p0

    .line 255
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_3

    .line 256
    const-string p0, "alerting"

    return-object p0

    .line 257
    :cond_3
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_4

    goto :goto_0

    .line 259
    :cond_4
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_5

    .line 260
    const-string p0, "disconnected"

    return-object p0

    .line 262
    :cond_5
    return-object v1

    .line 258
    :cond_6
    :goto_0
    const-string p0, "dialing-in"

    return-object p0
.end method

.method public static stateToInt(Lcom/spreadtrum/ims/ImsDriverCall$State;)I
    .locals 1

    .line 229
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_0

    .line 230
    const/4 p0, 0x0

    return p0

    .line 231
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_1

    .line 232
    const/4 p0, 0x1

    return p0

    .line 233
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_2

    .line 234
    const/4 p0, 0x2

    return p0

    .line 235
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_3

    .line 236
    const/4 p0, 0x3

    return p0

    .line 237
    :cond_3
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_4

    .line 238
    const/4 p0, 0x4

    return p0

    .line 239
    :cond_4
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-ne p0, v0, :cond_5

    .line 240
    const/4 p0, 0x5

    return p0

    .line 241
    :cond_5
    sget-object p0, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 242
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 391
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getRTTCallMediaDirection()I
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const/16 v1, 0x7d0

    if-eqz v0, :cond_6

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 121
    const-string v2, "text_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    const-string v2, "a=.*?(only|sendrecv)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_1
    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rttCallMediaDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_5

    const-string v2, "sendrecv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    const-string v2, "sendonly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    const/16 v0, 0x7d2

    return v0

    .line 139
    :cond_3
    const-string v2, "recvonly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const/16 v0, 0x7d3

    return v0

    .line 142
    :cond_4
    return v1

    .line 136
    :cond_5
    :goto_0
    const/16 v0, 0x7d1

    return v0

    .line 122
    :cond_6
    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaDescription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1
.end method

.method public getVideoCallMediaDirection()I
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_6

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    const-string v2, "a=.*?(only|sendrecv)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoCallMediaDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_5

    const-string v2, "sendrecv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, "sendonly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    const/16 v0, 0x3ea

    return v0

    .line 112
    :cond_3
    const-string v2, "recvonly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/16 v0, 0x3eb

    return v0

    .line 115
    :cond_4
    return v1

    .line 109
    :cond_5
    :goto_0
    const/16 v0, 0x3e9

    return v0

    .line 95
    :cond_6
    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaDescription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1
.end method

.method public isRequestDowngradeToVoice()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestUpgrade()Z
    .locals 2

    .line 59
    iget v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0
.end method

.method public isReuestAccept()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReuestReject()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRttCall()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "m=text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRttVTCall()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "text_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isMT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",negStatusPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",negStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mediaDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",csMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    if-eqz v2, :cond_0

    const-string v2, "voc"

    goto :goto_0

    :cond_0
    const-string v2, "nonvoc"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eqz v2, :cond_1

    const-string v2, "conf"

    goto :goto_1

    :cond_1
    const-string v2, "norm"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",numberType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,numberType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/spreadtrum/ims/ImsDriverCall;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    .line 410
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "prioritypresent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",cliValidityPresent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",,cli="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    if-eqz v2, :cond_2

    const-string v2, "voice"

    goto :goto_2

    :cond_2
    const-string v2, "video"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    iget-boolean v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eqz v2, :cond_3

    const-string v2, "evp"

    goto :goto_3

    :cond_3
    const-string v2, "noevp"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0
.end method

.method public update(Lcom/spreadtrum/ims/ImsDriverCall;)Z
    .locals 4

    .line 297
    nop

    .line 298
    iget v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    iget v1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 299
    iput v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->index:I

    .line 300
    move v0, v2

    goto :goto_0

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    iget-boolean v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    if-eq v1, v3, :cond_1

    .line 303
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMT:Z

    .line 304
    move v0, v2

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    if-eq v1, v3, :cond_2

    .line 307
    iput-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->state:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 308
    move v0, v2

    .line 310
    :cond_2
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    iget-boolean v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    if-eq v1, v3, :cond_3

    .line 311
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isMpty:Z

    .line 312
    move v0, v2

    .line 314
    :cond_3
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    if-eq v1, v3, :cond_4

    .line 315
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mptyState:I

    .line 316
    move v0, v2

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    if-eq v1, v3, :cond_5

    .line 319
    iput-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->number:Ljava/lang/String;

    .line 320
    move v0, v2

    .line 322
    :cond_5
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    if-eq v1, v3, :cond_6

    .line 323
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->TOA:I

    .line 324
    move v0, v2

    .line 326
    :cond_6
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    iget-boolean v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    if-eq v1, v3, :cond_7

    .line 327
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoice:Z

    .line 328
    move v0, v2

    .line 330
    :cond_7
    iget-boolean v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    iget-boolean v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    if-eq v1, v3, :cond_8

    .line 331
    iput-boolean v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->isVoicePrivacy:Z

    .line 332
    move v0, v2

    .line 334
    :cond_8
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    if-eq v1, v3, :cond_9

    .line 335
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->als:I

    .line 336
    move v0, v2

    .line 338
    :cond_9
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    if-eq v1, v3, :cond_a

    .line 339
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberPresentation:I

    .line 340
    move v0, v2

    .line 342
    :cond_a
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/spreadtrum/ims/ImsDriverCall;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 343
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->name:Ljava/lang/String;

    .line 344
    move v0, v2

    .line 346
    :cond_b
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    if-eq v1, v3, :cond_c

    .line 347
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->namePresentation:I

    .line 348
    move v0, v2

    .line 350
    :cond_c
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-eq v1, v3, :cond_d

    .line 351
    iput-object v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 352
    move v0, v2

    .line 354
    :cond_d
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    if-eq v1, v3, :cond_e

    .line 355
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatusPresent:I

    .line 356
    move v0, v2

    .line 358
    :cond_e
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    if-eq v1, v3, :cond_f

    .line 359
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->negStatus:I

    .line 360
    move v0, v2

    .line 362
    :cond_f
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/spreadtrum/ims/ImsDriverCall;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 363
    iget-object v0, p1, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/spreadtrum/ims/ImsDriverCall;->mediaDescription:Ljava/lang/String;

    .line 364
    move v0, v2

    .line 366
    :cond_10
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    if-eq v1, v3, :cond_11

    .line 367
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->csMode:I

    .line 368
    move v0, v2

    .line 370
    :cond_11
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    if-eq v1, v3, :cond_12

    .line 371
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->numberType:I

    .line 372
    move v0, v2

    .line 374
    :cond_12
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    if-eq v1, v3, :cond_13

    .line 375
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->prioritypresent:I

    .line 376
    move v0, v2

    .line 378
    :cond_13
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    iget v3, p1, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    if-eq v1, v3, :cond_14

    .line 379
    iput v3, p0, Lcom/spreadtrum/ims/ImsDriverCall;->priority:I

    .line 380
    move v0, v2

    .line 382
    :cond_14
    iget v1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    iget p1, p1, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    if-eq v1, p1, :cond_15

    .line 383
    iput p1, p0, Lcom/spreadtrum/ims/ImsDriverCall;->cliValidityPresent:I

    .line 384
    goto :goto_1

    .line 382
    :cond_15
    move v2, v0

    .line 387
    :goto_1
    return v2
.end method
