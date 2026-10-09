.class public Lcom/spreadtrum/ims/gba/GbaHandler;
.super Landroid/os/Handler;
.source "GbaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;
    }
.end annotation


# static fields
.field private static final EVENT_BOOTSTRAP_AUTHENTICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GbaHandler"


# instance fields
.field private mImsService:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/spreadtrum/ims/gba/GbaHandler;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 23
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 79
    const-string p1, "GbaHandler"

    const-string v0, "info"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private waitForResult(Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;)V
    .locals 1

    .line 70
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :cond_0
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    const-string p1, "waitForResult error"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    .line 76
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 28
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;

    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 31
    :pswitch_0
    const-string p1, "EVENT_BOOTSTRAP_AUTHENTICATION"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/internal/GbaAuthResult;

    iput-object p1, v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    iput-object p1, v1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GbaAuthResult fail: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    .line 39
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 40
    monitor-exit v1

    .line 41
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 45
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/spreadtrum/ims/gba/GbaHandler;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->getImsRadioInterface(I)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v1

    .line 51
    new-instance p1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;

    const-string v0, "bootstrapAuthenticationRequest"

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 52
    monitor-enter p1

    .line 53
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 54
    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/ImsRadioInterface;->bootstrapAuthenticationRequest(Landroid/os/Message;IILjava/lang/String;[BZ)V

    .line 56
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->waitForResult(Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;)V

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 p2, 0x0

    :try_start_1
    iget-object p1, p1, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/internal/GbaAuthResult;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bootstrapAuthenticationRequest NullPointerException happen."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/gba/GbaHandler;->log(Ljava/lang/String;)V

    .line 64
    return-object p2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    return-object p2

    .line 57
    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
