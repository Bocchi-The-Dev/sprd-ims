.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;
.super Ljava/lang/Object;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TpMrHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;
    }
.end annotation


# static fields
.field private static final MSG_GET_TPMR_TIMEOUT:I = -0x16

.field private static final MSG_SET_TPMR:I = -0x15

.field private static final TIMEOUT:I = 0x1388


# instance fields
.field private mPhoneId:I

.field private mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTpMrHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFirstRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->getFirstRequest()Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleNextRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->handleNextRequest()V

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;I)V
    .locals 1

    .line 798
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    .line 744
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TpMrHelper["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    .line 801
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    .line 802
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    .line 804
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TpMrHelper"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 806
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 807
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    .line 808
    return-void
.end method

.method private getFirstRequest()Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;
    .locals 3

    .line 868
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 870
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    const-string v2, "Can not get the first request as no request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    monitor-exit v0

    return-object v1

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNextRequest()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 863
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->processRequest()V

    .line 864
    monitor-exit v0

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getTpMr(ILcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V
    .locals 3

    .line 811
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the TPMR for the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 814
    :try_start_0
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;ILcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V

    .line 815
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->processRequest()V

    .line 821
    :cond_0
    monitor-exit v0

    .line 822
    return-void

    .line 821
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public processRequest()V
    .locals 5

    .line 846
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->getFirstRequest()Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    move-result-object v0

    .line 847
    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    const-string v1, "Failed to process the request as there isn\'t request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmRadioInteractor(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v1

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_token:I

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/unisoc/telephony/RadioInteractor;->getTPMRState(Landroid/os/Messenger;II)V

    .line 855
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    const/16 v2, -0x16

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    iget v4, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_token:I

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_sms:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 858
    return-void
.end method

.method public setTpMr(II)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set tpmr for the sms["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as new value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->getFirstRequest()Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    move-result-object v0

    .line 830
    if-nez v0, :cond_0

    .line 831
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    const-string p2, "Failed to set TpMr as there isn\'t request."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 835
    :cond_0
    iget v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_token:I

    if-ne p1, v1, :cond_1

    .line 837
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmRadioInteractor(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object p1

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTpMrHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v1, -0x15

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mPhoneId:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->setTPMRState(ILandroid/os/Messenger;II)V

    goto :goto_0

    .line 840
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shouldn\'t be here, set tpmr for token["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "], but current processing the "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_sms:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_0
    return-void
.end method
