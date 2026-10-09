.class Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;
.super Landroid/os/Handler;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/spreadtrum/ims/IwlanDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

.field final synthetic val$slotId:I

.field final synthetic val$this$0:Lcom/spreadtrum/ims/IwlanDataService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/spreadtrum/ims/IwlanDataService;I)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    iput-object p3, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->val$this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iput p4, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->-$$Nest$fgetmCallbackMap(Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 220
    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage callback is null, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 226
    const-string v2, "hasException"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 227
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_0

    .line 265
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 266
    return-void

    .line 259
    :pswitch_0
    nop

    .line 260
    if-eqz v2, :cond_1

    move v3, v5

    goto :goto_0

    .line 261
    :cond_1
    nop

    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    iget-object p1, p1, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-static {p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$fgetmDataCallList(Lcom/spreadtrum/ims/IwlanDataService;)Ljava/util/List;

    move-result-object p1

    .line 259
    invoke-virtual {v0, v3, p1}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 263
    goto :goto_6

    .line 254
    :pswitch_1
    if-eqz v2, :cond_2

    .line 255
    move v3, v5

    goto :goto_1

    .line 256
    :cond_2
    nop

    .line 254
    :goto_1
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    .line 257
    goto :goto_6

    .line 249
    :pswitch_2
    if-eqz v2, :cond_3

    .line 250
    move v3, v5

    goto :goto_2

    .line 251
    :cond_3
    nop

    .line 249
    :goto_2
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    .line 252
    goto :goto_6

    .line 244
    :pswitch_3
    if-eqz v2, :cond_4

    .line 245
    move v3, v5

    goto :goto_3

    .line 246
    :cond_4
    nop

    .line 244
    :goto_3
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 247
    goto :goto_6

    .line 229
    :pswitch_4
    if-eqz v2, :cond_5

    .line 230
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    iget-object p1, p1, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget v4, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->val$slotId:I

    const/4 v6, 0x1

    invoke-static {p1, v4, v6}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$msetMmsTransportState(Lcom/spreadtrum/ims/IwlanDataService;IZ)V

    .line 233
    :cond_5
    nop

    .line 235
    const-string p1, "result"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;

    .line 236
    if-eqz v2, :cond_6

    .line 237
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;

    invoke-virtual {p1, v3}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getPdnResponse(Z)Landroid/telephony/data/DataCallResponse;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lcom/spreadtrum/ims/IwlanDataService;->convertHalDataCallResult(Lcom/android/unisoc/telephony/dataCallResponse/DataCallResponse;)Landroid/telephony/data/DataCallResponse;

    move-result-object p1

    .line 238
    :goto_4
    if-eqz v2, :cond_7

    .line 239
    move v3, v5

    goto :goto_5

    .line 240
    :cond_7
    nop

    .line 238
    :goto_5
    invoke-virtual {v0, v3, p1}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 242
    nop

    .line 268
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
