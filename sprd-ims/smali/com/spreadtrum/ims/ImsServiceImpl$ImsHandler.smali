.class public Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;
.super Landroid/os/Handler;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 1280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1286
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleImsIccEvent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Message;)V

    .line 1287
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {v1, p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleImsRegEvent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/Message;)V

    .line 1288
    iget p1, p1, Landroid/os/Message;->what:I

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1352
    :sswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleC2kAutoSwitch(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1353
    goto/16 :goto_0

    .line 1348
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v1, "EVENT_GET_IMS_USER_AGENT"

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 1349
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetImsUserAgent(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1350
    goto :goto_0

    .line 1345
    :sswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetPAU(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1346
    goto :goto_0

    .line 1302
    :sswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setSmsOverIp(Landroid/os/AsyncResult;)V

    .line 1303
    goto :goto_0

    .line 1341
    :sswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetRatCapResault(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1342
    goto :goto_0

    .line 1337
    :sswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleImsErrorCauseInfo(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1338
    goto :goto_0

    .line 1334
    :sswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetImsCniInfo(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1335
    goto :goto_0

    .line 1305
    :sswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetRatCapNvConfig(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1306
    goto :goto_0

    .line 1299
    :sswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVideoResolution(Landroid/os/AsyncResult;)V

    .line 1300
    goto :goto_0

    .line 1329
    :sswitch_9
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, "EVENT_RADIO_ON"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 1330
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleCallAbilitySyncFail(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 1331
    goto :goto_0

    .line 1325
    :sswitch_a
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, "EVENT_RADIO_AVAILABLE"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogi(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 1326
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleCallAbilitySyncFail(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 1327
    goto :goto_0

    .line 1321
    :sswitch_b
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleGetImsSrvccCap(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1322
    goto :goto_0

    .line 1318
    :sswitch_c
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->onWifiParamEvent(Landroid/os/AsyncResult;)V

    .line 1319
    goto :goto_0

    .line 1314
    :sswitch_d
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleSetCallAbilityDone(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1315
    goto :goto_0

    .line 1309
    :sswitch_e
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleRadioOffOrNotAvailable(Lcom/spreadtrum/ims/ImsServiceImpl;)V

    .line 1310
    goto :goto_0

    .line 1290
    :sswitch_f
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mhandleSrvccStateChange(Lcom/spreadtrum/ims/ImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1291
    nop

    .line 1357
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_f
        0x6b -> :sswitch_e
        0x6c -> :sswitch_d
        0x72 -> :sswitch_c
        0x73 -> :sswitch_b
        0x76 -> :sswitch_a
        0x77 -> :sswitch_9
        0x78 -> :sswitch_8
        0x79 -> :sswitch_7
        0x7a -> :sswitch_6
        0x7b -> :sswitch_5
        0x7c -> :sswitch_4
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
