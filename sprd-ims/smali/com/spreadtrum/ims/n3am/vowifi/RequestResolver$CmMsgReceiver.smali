.class Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;
.source "RequestResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmMsgReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    .line 202
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;-><init>([I)V

    .line 205
    return-void

    :array_0
    .array-data 4
        0x81
        0x82
        0xe0
    .end array-data
.end method


# virtual methods
.method public onReceive(I)V
    .locals 5

    .line 209
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmMsgReceiver recieve the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 236
    :sswitch_0
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    new-instance v3, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiRssiRsp;

    invoke-direct {v3}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiRssiRsp;-><init>()V

    iget-object v4, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v4}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmCmMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 237
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v2}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    goto/16 :goto_1

    .line 220
    :sswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmCmMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, p1, v2}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->getInt8Extra(II)I

    move-result p1

    .line 221
    if-ne p1, v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Start observe wifi state."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stop observe wifi state."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    goto :goto_1

    .line 228
    :catch_0
    move-exception p1

    .line 229
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle the notify \'observe wifi req\' as ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    goto :goto_1

    .line 214
    :sswitch_2
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    new-instance v2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCountryRsp;

    invoke-direct {v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCountryRsp;-><init>()V

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v3}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmCmMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 215
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$CmMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    nop

    .line 241
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x82 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method
