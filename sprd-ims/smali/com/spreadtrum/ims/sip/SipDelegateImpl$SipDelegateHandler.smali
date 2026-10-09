.class public Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;
.super Landroid/os/Handler;
.source "SipDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/sip/SipDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SipDelegateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/os/Looper;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    .line 231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/SipMessage;

    .line 257
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->-$$Nest$monMessageReceived(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipMessage;)V

    .line 258
    goto :goto_0

    .line 247
    :pswitch_1
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 249
    invoke-static {v0, v1, v2, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->-$$Nest$monSendSipMessageResult(Lcom/spreadtrum/ims/sip/SipDelegateImpl;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception p1

    .line 252
    iget-object p1, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    const-string v0, "error parsing sendResult"

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->log(Ljava/lang/String;)V

    .line 254
    goto :goto_0

    .line 243
    :pswitch_2
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/SipDelegateConfiguration;

    .line 244
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->-$$Nest$monConfigurationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 245
    goto :goto_0

    .line 239
    :pswitch_3
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 240
    iget-object v0, p0, Lcom/spreadtrum/ims/sip/SipDelegateImpl$SipDelegateHandler;->this$0:Lcom/spreadtrum/ims/sip/SipDelegateImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/sip/SipDelegateImpl;->-$$Nest$monFeatureRegistrationChanged(Lcom/spreadtrum/ims/sip/SipDelegateImpl;Ljava/util/ArrayList;)V

    .line 241
    nop

    .line 262
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
