.class public Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SrmiChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;,
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;
    }
.end annotation


# static fields
.field private static final MSG_SEND:I = 0x1

.field private static final PROCESS_PENDING_MSG:I = 0x2


# instance fields
.field private mChannelCreated:Z

.field private mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommType:I

.field private mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

.field private mMsgReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mRetryCount:I

.field private mSendingMsg:Z

.field private mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

.field private mSrmiMsgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mprocessPendingMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->processPendingMsg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msend(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->send(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    return-void
.end method

.method private constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Ljava/lang/String;I)V
    .locals 2

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mChannelCreated:Z

    .line 248
    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSendingMsg:Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    .line 251
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    .line 253
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 254
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    .line 255
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    .line 256
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    .line 281
    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    .line 282
    iput p3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    .line 283
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    .line 284
    const/4 p1, 0x5

    iput p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mRetryCount:I

    .line 286
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 287
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    .line 288
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    .line 290
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 292
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 293
    new-instance p2, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    .line 295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    .line 297
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->nativeCreateChannel()V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Ljava/lang/String;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Ljava/lang/String;I)V

    return-void
.end method

.method private nativeCreateChannel()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->create(Ljava/lang/String;I)I

    move-result v0

    .line 370
    if-eqz v0, :cond_1

    .line 371
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create SrmiChannel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mChannelCreated:Z

    .line 376
    :goto_0
    return-void
.end method

.method private declared-synchronized processPendingMsg()V
    .locals 3

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    const-string v1, "SrmiMgr do not ready, can not process the other cmds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 384
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSendingMsg:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    const-string v1, "There is cmd in processing, can not process the other cmds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 389
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 390
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    const-string v1, "There isn\'t any pending action, Do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 394
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    .line 397
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    invoke-virtual {v2, v1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private putByteExtra(IIB)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->putByteExtra(Ljava/lang/String;IIIB)I

    .line 497
    return-void
.end method

.method private putIntExtra(III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->putIntExtra(Ljava/lang/String;IIII)I

    .line 493
    return-void
.end method

.method private putStringExtra(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I

    .line 501
    return-void
.end method

.method private putTLVExtra(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->putTLV(Ljava/lang/String;IIILjava/lang/String;)I

    .line 505
    return-void
.end method

.method private declared-synchronized send(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V
    .locals 9

    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send srmi message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSendingMsg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v4, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getMsgId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->allocTxMessage(Ljava/lang/String;II)I

    move-result v3

    .line 408
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 409
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to alloc the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 414
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->hasAttribute()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getMsgId()I

    move-result v3

    .line 416
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getAttrs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;

    .line 417
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 434
    :pswitch_0
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getAttrId()I

    move-result v6

    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v3, v6, v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->putTLVExtra(IILjava/lang/String;)V

    goto :goto_1

    .line 431
    :pswitch_1
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getAttrId()I

    move-result v6

    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v3, v6, v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->putStringExtra(IILjava/lang/String;)V

    .line 432
    goto :goto_1

    .line 422
    :pswitch_2
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_1

    .line 423
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_2

    .line 424
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Maybe error if the value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] convert as int8."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    nop

    .line 428
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getAttrId()I

    move-result v6

    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    .line 427
    invoke-direct {p0, v3, v6, v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->putByteExtra(IIB)V

    .line 429
    goto :goto_1

    .line 419
    :pswitch_3
    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getAttrId()I

    move-result v6

    invoke-virtual {v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v3, v6, v5}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->putIntExtra(III)V

    .line 420
    nop

    .line 437
    :goto_1
    goto/16 :goto_0

    .line 439
    :cond_3
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->decreaseRetryCount()V

    .line 440
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v4, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getMsgId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->sendMessage(Ljava/lang/String;II)I

    move-result v3

    .line 441
    if-eqz v3, :cond_4

    .line 442
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send srmi message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v4, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getMsgId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->freeTxMessage(Ljava/lang/String;II)V

    .line 449
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getKey()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getKey()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 452
    iput-boolean v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSendingMsg:Z

    .line 453
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    invoke-virtual {v3, v1, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 469
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 454
    :catch_0
    move-exception v3

    .line 455
    :try_start_3
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send srmi message["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] as catch the ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 456
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getRetryCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_5

    .line 458
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to send srmi message for 5 times, ignore it."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getKey()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->getKey()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 463
    iput-boolean v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSendingMsg:Z

    .line 464
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 466
    :cond_5
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    invoke-virtual {v1, v0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :goto_2
    nop

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 400
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->removeChannel(Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mChannelCreated:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->destroy(Ljava/lang/String;I)V

    .line 307
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 308
    return-void
.end method

.method public getInt8Extra(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getByteExtra(Ljava/lang/String;III)B

    move-result p1

    return p1
.end method

.method public getIntExtra(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getIntExtra(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringExtra(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getStringExtra(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTLVExtra(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getTLV(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mChannelCreated:Z

    return v0
.end method

.method public onMsgReceived(I)V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;

    .line 478
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;->needNotify(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive the monitor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;->onReceive(I)V

    .line 482
    :cond_1
    goto :goto_0

    .line 485
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMgr:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCommType:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->freeRxMessage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to free the rx message["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "] as catch the ex: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_1
    return-void
.end method

.method public onReady(Z)V
    .locals 0

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->nativeCreateChannel()V

    .line 317
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->processPendingMsg()V

    goto :goto_0

    .line 319
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mChannelCreated:Z

    .line 321
    :goto_0
    return-void
.end method

.method public registerRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V
    .locals 1

    .line 328
    if-nez p1, :cond_0

    .line 329
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to add this message receiver as it is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V
    .locals 4

    .line 348
    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    const-string v0, "Failed to send message as srmi message is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new msg will be added to cmd list with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mSrmiMsgs:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->setKey(Ljava/lang/Integer;)V

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->processPendingMsg()V

    .line 364
    return-void

    .line 361
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unregisterRequestMsgReceiver(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;)V
    .locals 1

    .line 337
    if-nez p1, :cond_0

    .line 338
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove this message receiver as it is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->mMsgReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    return-void
.end method
