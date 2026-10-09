.class Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;
.super Landroid/os/Handler;
.source "RequestResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Landroid/os/Looper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->get()Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->native_observe_wifi_stop()V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->get()Lcom/spreadtrum/ims/n3am/util/NativeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/util/NativeHelper;->native_observe_wifi_start()V

    .line 81
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getWifiRssi(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Z)V

    .line 86
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
