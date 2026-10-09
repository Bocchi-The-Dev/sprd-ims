.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;
.super Ljava/lang/Object;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdManager"
.end annotation


# static fields
.field private static final ACTION_TYPE_QUERY:I = 0x0

.field private static final ACTION_TYPE_UPDATE:I = 0x1


# instance fields
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

.field private mHandleCmd:Z

.field private mUTActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method static bridge synthetic -$$Nest$fputmHandleCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPendingAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 1

    .line 1453
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z

    .line 1449
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1450
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    .line 1451
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    .line 1454
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x65

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1455
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    .line 1456
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    .line 1457
    return-void
.end method

.method private feedbackCBResult(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1700
    iget-object v2, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1701
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v3, p2, v0, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mfindCallBarringInfo(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/util/ArrayList;II)[I

    move-result-object p2

    .line 1703
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 1704
    iget-boolean v2, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    const-string v3, "] and the state is: "

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1705
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v2

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringResult(I[I)V

    .line 1706
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to query the call barring as extension for condition["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1708
    :cond_0
    iget-boolean v2, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1709
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1710
    aget v4, p2, v1

    iput v4, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1711
    const-string v4, ""

    iput-object v4, v2, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 1712
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v4}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v4

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1713
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/telephony/ims/ImsSsInfo;

    aput-object v2, v6, v1

    .line 1712
    invoke-interface {v4, v5, p1, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1714
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to query the call barring for condition["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    goto/16 :goto_0

    .line 1718
    :cond_1
    iget-boolean p2, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    const-string v2, "] as can not find matched info."

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1719
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object p2

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1720
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    const/16 v3, 0x324

    .line 1719
    invoke-interface {p2, p1, v1, v3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringFailed(I[II)V

    .line 1721
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query the call barring as extension for condition["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1723
    :cond_2
    iget-boolean p2, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1724
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object p2

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x321

    invoke-direct {v4, v5, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p2, v3, p1, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1727
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query the call barring for condition["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_3
    :goto_0
    return-void
.end method

.method private feedbackCFResult(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1674
    return-void
.end method

.method private getActionType(I)I
    .locals 2

    .line 1830
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1853
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Shouldn\'t be here, do not defined this action now."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return v0

    .line 1850
    :pswitch_1
    return v0

    .line 1840
    :pswitch_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;
    .locals 2

    monitor-enter p0

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1819
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    monitor-exit p0

    return-object v0

    .line 1817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized needHandleResult()Z
    .locals 3

    monitor-enter p0

    .line 1804
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1805
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Do not handle any cmd now, needn\'t handle result."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    monitor-exit p0

    return v1

    .line 1809
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 1810
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "There isn\'t any pending action, shouldn\'t query CW finished."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1811
    monitor-exit p0

    return v1

    .line 1814
    :cond_1
    monitor-exit p0

    return v2

    .line 1803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onActionFailed(Landroid/telephony/ims/ImsReasonInfo;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)V
    .locals 3

    .line 1550
    monitor-enter p0

    .line 1551
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1552
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to handle the action failed for the special action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    monitor-exit p0

    return-void

    .line 1556
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    if-nez p2, :cond_1

    .line 1559
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object p2

    .line 1564
    :cond_1
    :try_start_1
    iget-boolean v0, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    if-eqz v0, :cond_5

    .line 1565
    iget v0, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getActionType(I)I

    move-result v0

    .line 1566
    if-nez v0, :cond_3

    .line 1567
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action failed for query action, and is extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-boolean v0, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1570
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1571
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1570
    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1572
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1573
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1574
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1573
    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1576
    :cond_3
    if-ne v0, v1, :cond_5

    .line 1577
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action failed for update action, and is extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-boolean v0, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1580
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1581
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1580
    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1582
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1583
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v2, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1584
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1583
    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1589
    :cond_5
    :goto_0
    iget-object v0, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_relateUTAction:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 1590
    if-eqz v0, :cond_6

    .line 1591
    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1596
    :cond_6
    goto :goto_1

    .line 1593
    :catch_0
    move-exception p1

    .line 1594
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to notify the ut configuration acton failed result."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch the RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :goto_1
    iget-object p1, p2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1599
    return-void

    .line 1556
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized onCmdFinished(Ljava/lang/Integer;)V
    .locals 1

    monitor-enter p0

    .line 1824
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1826
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    monitor-exit p0

    return-void

    .line 1823
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized processPendingAction()V
    .locals 6

    monitor-enter p0

    .line 1489
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z

    if-eqz v0, :cond_0

    .line 1490
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There is cmd in processing, can not process the other cmds."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    monitor-exit p0

    return-void

    .line 1494
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1495
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There isn\'t any pending action, Disable the UT after 15000ms."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object v0

    const/4 v1, -0x2

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    monitor-exit p0

    return-void

    .line 1501
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1503
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mHandleCmd:Z

    .line 1505
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1506
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 1508
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1509
    iget v4, v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1510
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1512
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v4}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1513
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will be handled now."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget v3, v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_timeoutMillis:I

    if-lez v3, :cond_2

    .line 1516
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1517
    iput v2, v3, Landroid/os/Message;->what:I

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 1519
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object v0

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_timeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1521
    :cond_2
    goto :goto_0

    .line 1523
    :cond_3
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1525
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1527
    :goto_0
    monitor-exit p0

    return-void

    .line 1488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I
    .locals 4

    .line 1460
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmdKeyMgr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1461
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new action will be added to cmd list with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    monitor-enter p0

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1465
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iput-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->removeMessages(I)V

    .line 1473
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1474
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    goto :goto_0

    .line 1477
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1482
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1485
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1468
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getFirstCmd()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1530
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 1535
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)V

    .line 1538
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1539
    return-void
.end method

.method public declared-synchronized onAllActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    monitor-enter p0

    .line 1542
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mCmds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1543
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1544
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->mUTActions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 1545
    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    goto :goto_0

    .line 1547
    :cond_0
    monitor-exit p0

    return-void

    .line 1541
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onQueryCLIRFinished(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->needHandleResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1758
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not handle any cmd now, shouldn\'t query CLIR finished."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void

    .line 1762
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_2

    .line 1764
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query CLIR finished, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1767
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1768
    const-string v2, "gsm.ss.clir"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1769
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    const/4 v2, 0x1

    aput p1, v4, v2

    const-string p1, "queryClir"

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1770
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 1773
    :cond_1
    iget-object p1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1777
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1778
    return-void
.end method

.method public onQueryCallBarringFinished(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->needHandleResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not handle any cmd now, shouldn\'t query CB finished."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return-void

    .line 1683
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object v0

    .line 1684
    if-eqz v0, :cond_2

    .line 1685
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query call barring finished, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    if-eqz v1, :cond_1

    .line 1687
    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->feedbackCBResult(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;Ljava/util/ArrayList;)V

    .line 1690
    :cond_1
    iget-object p1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1694
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1695
    return-void
.end method

.method public onQueryCallForwardFinished(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->needHandleResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not handle any cmd now, shouldn\'t query CF finished."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1608
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object v0

    .line 1609
    if-eqz v0, :cond_2

    .line 1610
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query CF finished, action._action is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    if-eqz v1, :cond_1

    .line 1612
    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->feedbackCFResult(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;Ljava/util/HashMap;)V

    .line 1615
    :cond_1
    iget-object p1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1619
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1620
    return-void
.end method

.method public onQueryCallWaitingFinished(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->needHandleResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not handle any cmd now, shouldn\'t query CW finished."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return-void

    .line 1739
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object v0

    .line 1740
    if-eqz v0, :cond_2

    .line 1741
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query call waiting finished, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_action:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1743
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1744
    iput p1, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1745
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    .line 1746
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/telephony/ims/ImsSsInfo;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 1745
    invoke-interface {p1, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1749
    :cond_1
    iget-object p1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1753
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1754
    return-void
.end method

.method public onUpdateActionSuccessed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->needHandleResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There isn\'t any pending action, shouldn\'t update action finished."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return-void

    .line 1786
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstAction()Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    move-result-object v0

    .line 1787
    if-eqz v0, :cond_3

    .line 1788
    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    if-eqz v1, :cond_1

    .line 1789
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1790
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto :goto_0

    .line 1792
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1793
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1796
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_key:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onCmdFinished(Ljava/lang/Integer;)V

    .line 1800
    :cond_3
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->processPendingAction()V

    .line 1801
    return-void
.end method
