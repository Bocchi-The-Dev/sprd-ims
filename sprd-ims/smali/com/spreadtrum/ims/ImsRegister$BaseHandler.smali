.class Lcom/spreadtrum/ims/ImsRegister$BaseHandler;
.super Landroid/os/Handler;
.source "ImsRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsRegister;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsRegister;Landroid/os/Looper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 129
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "1"

    const-string v2, "gsm.sys.sim.volte.allowedplmn"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xd1

    const-string v6, "gsm.sys.sim.rtt.allowed"

    const-string v7, "0"

    const-string v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v2, "EVENT_GET_RTT_ALLOWED"

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 311
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 312
    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_GET_RTT_ALLOWED: ar == null"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 314
    goto/16 :goto_6

    .line 316
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    nop

    .line 321
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 322
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget v3, p1, v10

    .line 324
    :cond_2
    if-ne v3, v9, :cond_3

    .line 325
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0, v6, v1}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 326
    :cond_3
    if-nez v3, :cond_1a

    .line 327
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0, v6, v7}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 317
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_RTT_ALLOWED : ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 318
    goto/16 :goto_6

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v3, "EVENT_GET_VOLTE_ALLOWED_PLMN"

    invoke-static {v0, v3}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 290
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 291
    if-nez p1, :cond_5

    .line 292
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_GET_VOLTE_ALLOWED_PLMN: ar == null"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 293
    goto/16 :goto_6

    .line 295
    :cond_5
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_2

    .line 300
    :cond_6
    nop

    .line 301
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    array-length v0, v0

    if-lez v0, :cond_7

    .line 302
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget v10, p1, v10

    .line 305
    :cond_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    if-ne v10, v9, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v7

    :goto_1
    invoke-virtual {p1, v0, v2, v1}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    goto/16 :goto_6

    .line 296
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_VOLTE_ALLOWED_PLMN : ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 297
    goto/16 :goto_6

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v1, "EVENT_SIM_REFRESH"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 266
    if-nez p1, :cond_a

    .line 267
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_SIM_REFRESH: ar == null"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 268
    goto/16 :goto_6

    .line 270
    :cond_a
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_c

    .line 271
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 272
    if-eqz p1, :cond_b

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p1, v9, :cond_b

    .line 273
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "Uicc initialized, need to init ISIM again."

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmInitISIMDone(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 276
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0, v2, v7}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    const-string v1, "-1"

    invoke-virtual {p1, v0, v6, v1}, Lcom/spreadtrum/ims/ImsService;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v8}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 282
    :cond_b
    goto/16 :goto_6

    .line 283
    :cond_c
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim REFRESH with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 285
    goto/16 :goto_6

    .line 250
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_RADIO_CAPABILITY_CHANGED"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmServiceId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/ImsRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 253
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmInitISIMDone(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 254
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmIMSBearerEstablished(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 255
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v8}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmCurrentImsRegistered(Lcom/spreadtrum/ims/ImsRegister;Z)V

    goto/16 :goto_6

    .line 258
    :cond_d
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_RADIO_CAPABILITY_CHANGED -> initisim"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$minitISIM(Lcom/spreadtrum/ims/ImsRegister;)V

    .line 261
    goto/16 :goto_6

    .line 233
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_ENABLE_IMS"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmTelephonyManager(Lcom/spreadtrum/ims/ImsRegister;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mNumeric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmServiceId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/ImsRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 239
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimaryCard : mLastNumeric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 241
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->allowEnableIms(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 242
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    iput-boolean v10, p1, Lcom/spreadtrum/ims/ImsRegister;->mSimChanged:Z

    .line 243
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    invoke-virtual {p1, v9, v4}, Lcom/spreadtrum/ims/ImsRadioInterface;->enableIms(ZLandroid/os/Message;)V

    .line 244
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmNumeric(Lcom/spreadtrum/ims/ImsRegister;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v1, "EVENT_IMS_BEARER_ESTABLISTED"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 184
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 185
    if-nez p1, :cond_e

    .line 186
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_IMS_BEARER_ESTABLISTED: ar == null"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 187
    goto/16 :goto_6

    .line 189
    :cond_e
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_f

    goto/16 :goto_5

    .line 208
    :cond_f
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 210
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_3

    .line 211
    :cond_10
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_11

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_11

    .line 212
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 213
    aget p1, p1, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 215
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_BEARER_ESTABLISTED : conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v9, :cond_12

    .line 217
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v9}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmIMSBearerEstablished(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 218
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v8}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    goto :goto_4

    .line 221
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_13

    .line 222
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmIMSBearerEstablished(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 223
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_IMS_BEARER_ESTABLISTED : conn.intValue() == 0: clear mIMSBearerEstablished"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v8}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_13
    :goto_4
    goto/16 :goto_6

    .line 226
    :catch_0
    move-exception p1

    .line 227
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_BEARER_ESTABLISTED : exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    goto/16 :goto_6

    .line 190
    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_BEARER_ESTABLISTED : ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 191
    nop

    .line 192
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_15

    .line 193
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 195
    :cond_15
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, p1, :cond_1a

    .line 196
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmRetryCount(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1a

    .line 197
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getImsBearerState(Landroid/os/Message;)V

    .line 198
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmRetryCount(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    add-int/2addr v0, v9

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmRetryCount(Lcom/spreadtrum/ims/ImsRegister;I)V

    goto/16 :goto_6

    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v1, "EVENT_INIT_ISIM_DONE"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 163
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 164
    if-nez p1, :cond_16

    .line 165
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_INIT_ISIM_DONE: ar == null"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 166
    goto/16 :goto_6

    .line 168
    :cond_16
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 169
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_17

    .line 170
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_INIT_ISIM_DONE ar.exception"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 171
    goto/16 :goto_6

    .line 173
    :cond_17
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v9}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmInitISIMDone(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 175
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getVoLTEAllowedPLMN(Landroid/os/Message;)V

    .line 178
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->allowEnableIms(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 179
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->enableIms()V

    goto/16 :goto_6

    .line 143
    :pswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_RADIO_STATE_CHANGED"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->isRadioOn()Z

    move-result p1

    if-nez p1, :cond_19

    .line 145
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmInitISIMDone(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 148
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmServiceId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/ImsRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->getLTECapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 149
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmIMSBearerEstablished(Lcom/spreadtrum/ims/ImsRegister;Z)V

    .line 152
    :cond_18
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v8}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmLastNumeric(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1, v10}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fputmCurrentImsRegistered(Lcom/spreadtrum/ims/ImsRegister;Z)V

    goto :goto_6

    .line 155
    :cond_19
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_RADIO_STATE_CHANGED -> radio is on"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$minitISIM(Lcom/spreadtrum/ims/ImsRegister;)V

    .line 157
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mSetUserAgent(Lcom/spreadtrum/ims/ImsRegister;)V

    .line 158
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getVoLTEAllowedPLMN(Landroid/os/Message;)V

    .line 160
    goto :goto_6

    .line 134
    :pswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    const-string v0, "EVENT_RECORDS_LOADED"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsRegister;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmCi(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsRegister$BaseHandler;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->getRTTAllowedPLMN(Landroid/os/Message;)V

    .line 138
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmImsService(Lcom/spreadtrum/ims/ImsRegister;)Lcom/spreadtrum/ims/ImsService;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRegister;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/ImsRegister;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->allowEnableIms(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 139
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRegister$BaseHandler;->this$0:Lcom/spreadtrum/ims/ImsRegister;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsRegister;->enableIms()V

    .line 333
    :cond_1a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xca
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
