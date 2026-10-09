.class public Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;
.super Landroid/os/Handler;
.source "RcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsCapabilityExchangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;Landroid/os/Looper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;->this$0:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl$RcsCapabilityExchangeHandler;->this$0:Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/RcsCapabilityExchangeImpl;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 109
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    goto :goto_0

    .line 124
    :pswitch_1
    goto :goto_0

    .line 122
    :pswitch_2
    goto :goto_0

    .line 120
    :pswitch_3
    goto :goto_0

    .line 118
    :pswitch_4
    goto :goto_0

    .line 115
    :pswitch_5
    goto :goto_0

    .line 112
    :pswitch_6
    nop

    .line 130
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
