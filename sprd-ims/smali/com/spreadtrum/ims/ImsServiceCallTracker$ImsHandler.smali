.class Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;
.super Landroid/os/Handler;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/Looper;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 177
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$mmessageToString(Lcom/spreadtrum/ims/ImsServiceCallTracker;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 220
    :pswitch_0
    if-eqz v0, :cond_2

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$fputmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    .line 224
    invoke-static {v1, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$misCsfbRedialVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "handle EVENT_IMS_CSFB_VENDOR_CAUSE: removeMessages"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 228
    :cond_0
    goto/16 :goto_0

    .line 216
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsWhenSafe()V

    .line 217
    goto/16 :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_2

    .line 209
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle EVENT_POLL_CURRENT_CALLS_RESULT: set needsPoll=F"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iput-boolean v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 211
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iput-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 212
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->updateCurrentCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCurrentCallsWhenSafe()V

    .line 206
    goto :goto_0

    .line 197
    :pswitch_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_2

    .line 198
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iput-boolean v2, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mNeedsPoll:Z

    .line 200
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iput-object v3, v0, Lcom/spreadtrum/ims/ImsServiceCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 201
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$mhandlePollCalls(Lcom/spreadtrum/ims/ImsServiceCallTracker;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 194
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->operationComplete()V

    .line 195
    goto :goto_0

    .line 191
    :pswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->pollCallsWhenSafe()V

    .line 192
    goto :goto_0

    .line 181
    :pswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$fgetmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    invoke-static {}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handle EVENT_CALL_STATE_CHANGE: reset mImsCsfbVendorCause."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceCallTracker;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->-$$Nest$fputmImsCsfbVendorCause(Lcom/spreadtrum/ims/ImsServiceCallTracker;Ljava/lang/String;)V

    .line 185
    :cond_1
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->removeMessages(I)V

    .line 186
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/spreadtrum/ims/ImsServiceCallTracker$ImsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    nop

    .line 234
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
