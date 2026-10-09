.class public Lcom/spreadtrum/ims/RILRequest;
.super Ljava/lang/Object;
.source "RILRequest.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RilRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/spreadtrum/ims/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/spreadtrum/ims/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mStartTimeMs:J

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sRandom:Ljava/util/Random;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    .line 34
    sput v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic lambda$obtain$0(I)I
    .locals 1

    .line 88
    add-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    rem-int/2addr p0, v0

    return p0
.end method

.method private static obtain(ILandroid/os/Message;)Lcom/spreadtrum/ims/RILRequest;
    .locals 4

    .line 72
    nop

    .line 74
    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 76
    nop

    .line 77
    iget-object v3, v1, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    sput-object v3, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    .line 78
    iput-object v2, v1, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    .line 79
    sget v3, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    goto :goto_0

    .line 75
    :cond_0
    move-object v1, v2

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/spreadtrum/ims/RILRequest;

    invoke-direct {v1}, Lcom/spreadtrum/ims/RILRequest;-><init>()V

    .line 88
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lcom/spreadtrum/ims/RILRequest$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/spreadtrum/ims/RILRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    iput v0, v1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    .line 90
    iput p0, v1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 91
    iput-object p1, v1, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    .line 93
    const/4 p0, -0x1

    iput p0, v1, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    .line 94
    iput-object v2, v1, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/spreadtrum/ims/RILRequest;->mStartTimeMs:J

    .line 96
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Message target must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_3
    :goto_1
    return-object v1

    .line 81
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/spreadtrum/ims/RILRequest;
    .locals 1

    .line 114
    invoke-static {p0, p1}, Lcom/spreadtrum/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 116
    if-eqz p2, :cond_0

    .line 117
    iput-object p2, p1, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 118
    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/spreadtrum/ims/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null workSource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RilRequest"

    invoke-static {p2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-object p1
.end method

.method static resetSerial()V
    .locals 3

    .line 178
    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/spreadtrum/ims/RILRequest;->sRandom:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public getRequest()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    return v0
.end method

.method public getResult()Landroid/os/Message;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    return v0
.end method

.method public getWorkSourceClientId()Ljava/lang/String;
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_2
    return-object v1

    .line 132
    :cond_3
    :goto_0
    return-object v1
.end method

.method onError(ILjava/lang/Object;)V
    .locals 2

    .line 206
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 210
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 211
    invoke-static {v1, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "RilRequest"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0, p2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 216
    iget-object p1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 218
    :cond_0
    return-void
.end method

.method release()V
    .locals 4

    .line 155
    sget-object v0, Lcom/spreadtrum/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    sget v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 157
    sget-object v2, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    iput-object v2, p0, Lcom/spreadtrum/ims/RILRequest;->mNext:Lcom/spreadtrum/ims/RILRequest;

    .line 158
    sput-object p0, Lcom/spreadtrum/ims/RILRequest;->sPool:Lcom/spreadtrum/ims/RILRequest;

    .line 159
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/spreadtrum/ims/RILRequest;->sPoolSize:I

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    .line 161
    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mWakeLockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 163
    if-nez v1, :cond_0

    .line 164
    const-string v1, "RilRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RILRequest releasing with held wake lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {p0}, Lcom/spreadtrum/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    iget v1, p0, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    rem-int/lit16 v1, v1, 0x2710

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    rsub-int/lit8 v4, v2, 0x4

    if-ge v3, v4, :cond_0

    .line 194
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
