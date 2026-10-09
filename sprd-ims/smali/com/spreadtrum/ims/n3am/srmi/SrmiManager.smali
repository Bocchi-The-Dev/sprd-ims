.class public Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;,
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;,
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;,
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;,
        Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
    }
.end annotation


# static fields
.field private static final MSG_SRMI_MESSAGE_RECEIVED:I = 0x1

.field private static final RES_SRMI_FAILURE:I = -0x1

.field private static final RES_SRMI_SUCCESS:I = 0x0

.field public static final SRMI_COMM_APCP:I = 0x0

.field public static final SRMI_COMM_APCP2:I = 0x1

.field public static final SRMI_COMM_CPCP2:I = 0x2

.field public static final SRMI_COMM_LOOP1:I = 0x3

.field public static final SRMI_COMM_LOOP2:I = 0x4

.field private static final SRMI_MSG_SEND_DELAY:I = 0x7d0

.field private static final SRMI_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;


# instance fields
.field private mCallback:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

.field mISrmi:Lcom/sprd/srmi/ISrmiService;

.field private mIntent:Landroid/content/Intent;

.field private mReady:Z

.field private mSrmiChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mReady:Z

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mIntent:Landroid/content/Intent;

    .line 528
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mContext:Landroid/content/Context;

    .line 529
    new-instance v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;

    invoke-direct {v1, p0, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback-IA;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mCallback:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;

    .line 530
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    .line 533
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    .line 553
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    .line 555
    new-instance v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$1;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mConnection:Landroid/content/ServiceConnection;

    .line 570
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mContext:Landroid/content/Context;

    .line 572
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/sprd/srmi/ISrmiService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mIntent:Landroid/content/Intent;

    .line 573
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sprd.srmi"

    const-string v2, "com.sprd.srmi.SrmiManager"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 576
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SrmiManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 578
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 579
    new-instance v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    invoke-direct {v0, p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mHandler:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MyHandler;

    .line 580
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
    .locals 1

    .line 583
    sget-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->sInstance:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->sInstance:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    .line 587
    :cond_0
    sget-object p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->sInstance:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    return-object p0
.end method

.method public static getSrmiChannel(Landroid/content/Context;Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
    .locals 1

    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->getChannel(Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object p0

    return-object p0

    .line 594
    :cond_1
    :goto_0
    sget-object p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get the srmi channel as name is null, or the type is invalid."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyReadyStateUpdate()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 653
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 655
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    iget-boolean v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mReady:Z

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->onReady(Z)V

    .line 656
    goto :goto_0

    .line 657
    :cond_1
    return-void
.end method

.method private rebindService()V
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$2;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 668
    return-void
.end method


# virtual methods
.method public allocTxMessage(Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 696
    :cond_0
    int-to-short p3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->allocTxMessage(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public create(Ljava/lang/String;I)I
    .locals 5

    .line 671
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 674
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sprd/srmi/ISrmiService;->create(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 675
    :catch_0
    move-exception v0

    .line 676
    sget-object v2, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create srmi channel for name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "] with type["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] as catch the ex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 677
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return v1
.end method

.method public destroy(Ljava/lang/String;I)V
    .locals 4

    .line 683
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    return-void

    .line 686
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sprd/srmi/ISrmiService;->destroy(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    sget-object v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy srmi channel for name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "] with type["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] as catch the ex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 689
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    return-void
.end method

.method public freeRxMessage(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    int-to-short p3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->freeRxMessage(Ljava/lang/String;II)V

    .line 709
    return-void
.end method

.method public freeTxMessage(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    int-to-short p3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->freeTxMessage(Ljava/lang/String;II)V

    .line 703
    return-void
.end method

.method public getByteExtra(Ljava/lang/String;III)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 762
    :cond_0
    int-to-short p3, p3

    int-to-short p4, p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getByteExtra(Ljava/lang/String;III)B

    move-result p1

    return p1
.end method

.method public getChannel(Ljava/lang/String;I)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
    .locals 3

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 611
    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;-><init>(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;Ljava/lang/String;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel-IA;)V

    .line 613
    iget-object p2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_0
    return-object v0

    .line 605
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get the srmi channel as name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Channel\'s name or type is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntExtra(Ljava/lang/String;III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/high16 p1, -0x80000000

    return p1

    .line 755
    :cond_0
    int-to-short p3, p3

    int-to-short p4, p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getIntExtra(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public getStringExtra(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 769
    :cond_0
    int-to-short p3, p3

    int-to-short p4, p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getStringExtra(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTLV(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 776
    :cond_0
    int-to-short p3, p3

    int-to-short p4, p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sprd/srmi/ISrmiService;->getTLV(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mReady:Z

    return v0
.end method

.method onServiceConnectionChanged(Landroid/os/IBinder;)V
    .locals 1

    .line 628
    if-nez p1, :cond_0

    .line 630
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    .line 631
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mReady:Z

    .line 634
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->notifyReadyStateUpdate()V

    .line 635
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->rebindService()V

    goto :goto_0

    .line 639
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sprd/srmi/ISrmiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiService;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    .line 640
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mCallback:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$MySrmiCallback;

    invoke-interface {p1, v0}, Lcom/sprd/srmi/ISrmiService;->registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V

    .line 641
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mReady:Z

    .line 642
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->notifyReadyStateUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    goto :goto_0

    .line 643
    :catch_0
    move-exception p1

    .line 644
    sget-object p1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register the srmi callback. Please check!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_0
    return-void
.end method

.method public putByteExtra(Ljava/lang/String;IIIB)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 734
    :cond_0
    int-to-short v3, p3

    int-to-short v4, p4

    move-object v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sprd/srmi/ISrmiService;->putByteExtra(Ljava/lang/String;IIIB)I

    move-result p1

    return p1
.end method

.method public putIntExtra(Ljava/lang/String;IIII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 727
    :cond_0
    int-to-short v3, p3

    int-to-short v4, p4

    move-object v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sprd/srmi/ISrmiService;->putIntExtra(Ljava/lang/String;IIII)I

    move-result p1

    return p1
.end method

.method public putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 741
    :cond_0
    int-to-short v3, p3

    int-to-short v4, p4

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sprd/srmi/ISrmiService;->putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putTLV(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 748
    :cond_0
    int-to-short v3, p3

    int-to-short v4, p4

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sprd/srmi/ISrmiService;->putTLV(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public recvMessage(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 720
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sprd/srmi/ISrmiService;->recvMessage(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public removeChannel(Ljava/lang/String;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mSrmiChannels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public sendMessage(Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->mISrmi:Lcom/sprd/srmi/ISrmiService;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 714
    :cond_0
    int-to-short p3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/sprd/srmi/ISrmiService;->sendMessage(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method
