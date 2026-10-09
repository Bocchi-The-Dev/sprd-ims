.class Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    .line 237
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 241
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ACTION_GET_VT_RESOLUTION->imsConfigListener is null!"

    const-string v5, " result:"

    const/4 v6, -0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 384
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage: unhandled message"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 377
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NOTIFY_INT_CONFIG_CHANGED -> item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->notifyIntImsConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto/16 :goto_9

    .line 380
    :catch_0
    move-exception p1

    .line 382
    goto/16 :goto_9

    .line 360
    :pswitch_1
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_IMS_RTT_DONE -> mRttUserEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmRttUserEnabled(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 363
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_IMS_RTT_DONE -> exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    const/16 v0, 0x64

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v3}, Lcom/spreadtrum/ims/ImsService;->notifyImsEventListener(IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmRttUserEnabled(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fputmRttEnabled(Lcom/spreadtrum/ims/ImsConfigImpl;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_0
    goto/16 :goto_9

    .line 370
    :catch_1
    move-exception p1

    .line 371
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_IMS_RTT_DONE Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    goto/16 :goto_9

    .line 355
    :pswitch_2
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_SET_IMS_RTT_AVAILABILITY -> enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object v1

    const/16 v2, 0x6d

    .line 357
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 356
    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRTTEnable(ILandroid/os/Message;)V

    .line 358
    goto/16 :goto_9

    .line 348
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 349
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_SMS_OVER_IP_DONE -> =ar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_c

    .line 351
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceImpl(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsServiceImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->updateImsFeatureForAllService()V

    goto/16 :goto_9

    .line 343
    :pswitch_4
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_SET_SMS_OVER_IP_AVAILABILITY ->mSmsOverIp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmSmsOverIp(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmSmsOverIp(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object v1

    const/16 v2, 0x6b

    .line 345
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 344
    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setSmsBearer(ILandroid/os/Message;)V

    .line 346
    goto/16 :goto_9

    .line 324
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result p1

    .line 326
    :try_start_2
    const-string v0, "persist.sys.videotelcel"

    .line 327
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 328
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_VOLTE_CALL_DEFINED_MEDIA_TYPE ->resolutionConfig:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eq v0, v6, :cond_1

    .line 331
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fputmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    move p1, v0

    .line 338
    :cond_1
    goto :goto_1

    .line 334
    :catch_2
    move-exception v0

    .line 335
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_VOLTE_CALL_DEFINED_MEDIA_TYPE Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    :goto_1
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_VOLTE_CALL_DEFINED_MEDIA_TYPE ->resolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/spreadtrum/ims/ImsRadioInterface;->setVideoResolution(ILandroid/os/Message;)V

    .line 341
    goto/16 :goto_9

    .line 301
    :pswitch_6
    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 302
    if-eqz p1, :cond_4

    .line 303
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    .line 304
    nop

    .line 305
    nop

    .line 306
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 307
    goto :goto_2

    .line 309
    :cond_2
    move v2, v7

    .line 311
    :goto_2
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SET_IMS_CALL_AVAILABILITY->status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz v0, :cond_3

    .line 313
    invoke-interface {v0, v7, v1, v6, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    goto :goto_3

    .line 316
    :cond_3
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_SET_IMS_CALL_AVAILABILITY->imsConfigListener is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 321
    :cond_4
    :goto_3
    goto/16 :goto_9

    .line 319
    :catch_3
    move-exception p1

    .line 320
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 322
    goto/16 :goto_9

    .line 272
    :pswitch_7
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 273
    if-eqz p1, :cond_9

    .line 274
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    .line 275
    nop

    .line 276
    nop

    .line 277
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    goto :goto_4

    .line 280
    :cond_5
    nop

    .line 281
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 283
    if-eqz p1, :cond_6

    array-length v2, p1

    if-lez v2, :cond_6

    .line 284
    aget v6, p1, v7

    move v2, v7

    goto :goto_5

    .line 287
    :cond_6
    move v2, v7

    goto :goto_5

    .line 278
    :cond_7
    :goto_4
    nop

    .line 287
    :goto_5
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_GET_IMS_CALL_AVAILABILITY->status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v0, :cond_8

    .line 289
    invoke-interface {v0, v7, v1, v6, v2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V

    goto :goto_6

    .line 292
    :cond_8
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_GET_IMS_CALL_AVAILABILITY->imsConfigListener is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 297
    :cond_9
    :goto_6
    goto :goto_9

    .line 295
    :catch_4
    move-exception p1

    .line 296
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    goto :goto_9

    .line 260
    :pswitch_8
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/ImsConfigListener;

    .line 261
    if-eqz p1, :cond_a

    .line 262
    invoke-interface {p1, v7}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V

    goto :goto_7

    .line 264
    :cond_a
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 268
    :goto_7
    goto :goto_9

    .line 266
    :catch_5
    move-exception p1

    .line 267
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    goto :goto_9

    .line 245
    :pswitch_9
    :try_start_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    .line 246
    nop

    .line 247
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 248
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_GET_VT_RESOLUTION->status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v0, :cond_b

    .line 250
    invoke-interface {v0, v7, p1}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V

    goto :goto_8

    .line 252
    :cond_b
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 256
    :goto_8
    goto :goto_9

    .line 254
    :catch_6
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    nop

    .line 387
    :cond_c
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
