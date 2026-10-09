.class Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/Looper;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    .line 773
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 774
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 777
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 778
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage->message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mmessageToString(Lcom/spreadtrum/ims/ImsCallSessionImpl;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 915
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage->unsupport message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 899
    :sswitch_0
    if-eqz v0, :cond_c

    .line 900
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of p1, p1, [Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 903
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 904
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 905
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage-> String[] data size error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v2

    .line 909
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object p1, p1, v4

    .line 908
    invoke-static {v0, v1, v2, v3, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleImsCallTextInforChanged(Lcom/spreadtrum/ims/ImsCallSessionImpl;IIILjava/lang/String;)V

    .line 910
    goto/16 :goto_5

    .line 901
    :cond_2
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->EVENT_CALL_TEXT_INFOR error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 848
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleSendDtmfToneEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 849
    goto/16 :goto_5

    .line 895
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleImsUssdEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 896
    goto/16 :goto_5

    .line 852
    :sswitch_3
    if-eqz v0, :cond_c

    .line 853
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_3

    goto :goto_1

    .line 855
    :cond_3
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_c

    .line 856
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleSimmgrSimEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;I)V

    goto/16 :goto_5

    .line 854
    :cond_4
    :goto_1
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->EVENT_SIMMGR_SIM_STATE_CHANGE error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 880
    :sswitch_4
    if-eqz v0, :cond_c

    .line 881
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_6

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_5

    goto :goto_2

    .line 883
    :cond_5
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of p1, p1, [B

    if-eqz p1, :cond_c

    .line 884
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 885
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleRttMessageReceived(Lcom/spreadtrum/ims/ImsCallSessionImpl;[B)V

    .line 886
    goto/16 :goto_5

    .line 882
    :cond_6
    :goto_2
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->EVENT_RTT_MESSAGE_RECEIVED: invalid message!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 877
    :sswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleRttChannelProcessDone(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 878
    goto/16 :goto_5

    .line 867
    :sswitch_6
    if-eqz v0, :cond_c

    .line 868
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_8

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_3

    .line 870
    :cond_7
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of p1, p1, [I

    if-eqz p1, :cond_c

    .line 871
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 872
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    aget v1, p1, v3

    aget p1, p1, v2

    invoke-static {v0, v1, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleCPSCapabilityChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;II)V

    .line 873
    goto/16 :goto_5

    .line 869
    :cond_8
    :goto_3
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->EVENT_RTT_CPS_CAPABILITY_CHANGE error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 837
    :sswitch_7
    if-eqz v0, :cond_c

    .line 838
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_a

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_9

    goto :goto_4

    .line 840
    :cond_9
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 841
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleToneEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;II)V

    goto/16 :goto_5

    .line 839
    :cond_a
    :goto_4
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->EVENT_HOLD_TONE or handleMessage->EVENT_EARLY_MEDIA_STATE_CHANGE error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 828
    :sswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->notifyRemoteVideoProfile(Landroid/os/AsyncResult;)V

    .line 829
    goto/16 :goto_5

    .line 891
    :sswitch_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleDialUssdAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 892
    goto/16 :goto_5

    .line 864
    :sswitch_a
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleConsultattvtTransferAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 865
    goto/16 :goto_5

    .line 861
    :sswitch_b
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 862
    goto/16 :goto_5

    .line 832
    :sswitch_c
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleSendUssdAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 833
    goto/16 :goto_5

    .line 824
    :sswitch_d
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleCallFailCauseAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 825
    goto/16 :goto_5

    .line 820
    :sswitch_e
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 821
    goto/16 :goto_5

    .line 817
    :sswitch_f
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 818
    goto/16 :goto_5

    .line 814
    :sswitch_10
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleAddParticipantAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 815
    goto :goto_5

    .line 811
    :sswitch_11
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleConferenceAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 812
    goto :goto_5

    .line 808
    :sswitch_12
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleMergeAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 809
    goto :goto_5

    .line 805
    :sswitch_13
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 806
    goto :goto_5

    .line 802
    :sswitch_14
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleRejectAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 803
    goto :goto_5

    .line 798
    :sswitch_15
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 799
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsWhenSafe()V

    .line 800
    goto :goto_5

    .line 795
    :sswitch_16
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleExceptionEvent(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 796
    goto :goto_5

    .line 792
    :sswitch_17
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleResumeAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 793
    goto :goto_5

    .line 789
    :sswitch_18
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$mhandleHoldAction(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/os/AsyncResult;)V

    .line 790
    goto :goto_5

    .line 781
    :sswitch_19
    if-eqz v0, :cond_b

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$fgetmIImsCallSessionListener(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 782
    invoke-static {}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage->ACTION_COMPLETE_DIAL error!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mCi:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsCallSessionImpl;)Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 785
    :cond_b
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsServiceCallTracker:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->operationComplete()V

    .line 786
    nop

    .line 918
    :cond_c
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_18
        0x3 -> :sswitch_17
        0x4 -> :sswitch_16
        0x5 -> :sswitch_15
        0x6 -> :sswitch_14
        0x7 -> :sswitch_13
        0x8 -> :sswitch_12
        0x9 -> :sswitch_11
        0xa -> :sswitch_10
        0xb -> :sswitch_f
        0xc -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x12 -> :sswitch_18
        0x13 -> :sswitch_9
        0x65 -> :sswitch_8
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_0
    .end sparse-switch
.end method
