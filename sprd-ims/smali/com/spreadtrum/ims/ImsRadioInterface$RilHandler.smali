.class Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;
.super Landroid/os/Handler;
.source "ImsRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RilHandler"
.end annotation


# instance fields
.field imsRadioInterfaceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/spreadtrum/ims/ImsRadioInterface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 279
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->imsRadioInterfaceWR:Ljava/lang/ref/WeakReference;

    .line 280
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->imsRadioInterfaceWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 284
    if-nez v0, :cond_0

    .line 285
    const-string v0, "ImsRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage->outer reference is null. msg drop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 290
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 364
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 365
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 366
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", service = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 367
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", cookie = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object v4

    .line 368
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    .line 370
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mresetProxyAndRequestList(Lcom/spreadtrum/ims/ImsRadioInterface;I)V

    goto/16 :goto_1

    .line 354
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 355
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 356
    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object v4

    .line 357
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 358
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmServiceCookies(Lcom/spreadtrum/ims/ImsRadioInterface;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    .line 359
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mresetProxyAndRequestList(Lcom/spreadtrum/ims/ImsRadioInterface;I)V

    goto/16 :goto_1

    .line 333
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 334
    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mfindAndRemoveRequestFromList(Lcom/spreadtrum/ims/ImsRadioInterface;I)Lcom/spreadtrum/ims/RILRequest;

    move-result-object p1

    .line 336
    if-nez p1, :cond_1

    .line 337
    goto/16 :goto_1

    .line 341
    :cond_1
    iget-object v1, p1, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 342
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$smgetResponseForTimedOutRILRequest(Lcom/spreadtrum/ims/RILRequest;)Ljava/lang/Object;

    move-result-object v1

    .line 343
    iget-object v2, p1, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 344
    iget-object v1, p1, Lcom/spreadtrum/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 345
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmMetrics(Lcom/spreadtrum/ims/ImsRadioInterface;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    iget v4, p1, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 349
    :cond_2
    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mdecrementWakeLock(Lcom/spreadtrum/ims/ImsRadioInterface;Lcom/spreadtrum/ims/RILRequest;)V

    .line 350
    invoke-virtual {p1}, Lcom/spreadtrum/ims/RILRequest;->release()V

    .line 351
    goto/16 :goto_1

    .line 324
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v1, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mAckWlSequenceNum:I

    if-ne p1, v1, :cond_5

    .line 325
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mclearWakeLock(Lcom/spreadtrum/ims/ImsRadioInterface;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    sget-boolean p1, Lcom/spreadtrum/ims/IMSLogController;->IMS_DEBUG:Z

    if-eqz p1, :cond_5

    .line 327
    const-string p1, "ImsRIL"

    const-string v0, "ACK_WAKE_LOCK_TIMEOUT"

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :pswitch_5
    iget-object v1, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 304
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v2, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mWlSequenceNum:I

    if-ne p1, v2, :cond_4

    .line 305
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$mclearWakeLock(Lcom/spreadtrum/ims/ImsRadioInterface;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmRadioBugDetector(Lcom/spreadtrum/ims/ImsRadioInterface;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 307
    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->-$$Nest$fgetmRadioBugDetector(Lcom/spreadtrum/ims/ImsRadioInterface;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    .line 310
    :cond_3
    iget-object v2, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 311
    const-string v3, "ImsRIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    nop

    :goto_0
    if-ge p1, v2, :cond_4

    .line 314
    iget-object v3, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/RILRequest;

    .line 315
    const-string v4, "ImsRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/spreadtrum/ims/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Lcom/spreadtrum/ims/RILRequest;->mRequest:I

    .line 316
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 320
    :cond_4
    monitor-exit v1

    .line 321
    goto :goto_1

    .line 320
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 374
    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
