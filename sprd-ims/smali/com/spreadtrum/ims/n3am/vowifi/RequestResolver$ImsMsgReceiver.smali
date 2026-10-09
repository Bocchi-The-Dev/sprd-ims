.class Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;
.source "RequestResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMsgReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)V
    .locals 2

    .line 246
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    .line 247
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;-><init>([I)V

    .line 248
    return-void
.end method


# virtual methods
.method public onReceive(I)V
    .locals 4

    .line 252
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsMsgReceiver receive the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    new-instance v2, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsMsgCountryRsp;

    invoke-direct {v2}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsMsgCountryRsp;-><init>()V

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v3}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmImsMsgChannel(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V

    .line 258
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$ImsMsgReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;)Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    nop

    .line 262
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
