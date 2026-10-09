.class Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 133
    invoke-static {}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 202
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$monSsRequest(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 197
    :sswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mgetCwStatusForVowifi(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 198
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 199
    goto/16 :goto_0

    .line 192
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 193
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mupdateCLIRStatus(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/AsyncResult;)V

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 195
    goto/16 :goto_0

    .line 188
    :sswitch_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessChangeCbPw(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 189
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 190
    goto/16 :goto_0

    .line 184
    :sswitch_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessUpdataCfExt(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 185
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 186
    goto/16 :goto_0

    .line 180
    :sswitch_5
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryCfExt(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 181
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 182
    goto/16 :goto_0

    .line 176
    :sswitch_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessUpdateColrAndColp(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 177
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 178
    goto :goto_0

    .line 170
    :sswitch_7
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessUpdateResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 171
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 172
    goto :goto_0

    .line 164
    :sswitch_8
    goto :goto_0

    .line 160
    :sswitch_9
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 161
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 162
    goto :goto_0

    .line 156
    :sswitch_a
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 157
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 158
    goto :goto_0

    .line 152
    :sswitch_b
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryResult(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 153
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 154
    goto :goto_0

    .line 148
    :sswitch_c
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryClir(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 149
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 150
    goto :goto_0

    .line 144
    :sswitch_d
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryCw(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 145
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 146
    goto :goto_0

    .line 140
    :sswitch_e
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryCf(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 141
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 142
    goto :goto_0

    .line 136
    :sswitch_f
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mprocessQueryCb(Lcom/spreadtrum/ims/ut/ImsUtImpl;Landroid/os/Message;)V

    .line 137
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtImpl$ImsHandler;->this$0:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->-$$Nest$mreleaseNetwork(Lcom/spreadtrum/ims/ut/ImsUtImpl;I)V

    .line 138
    nop

    .line 207
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x4 -> :sswitch_c
        0x5 -> :sswitch_b
        0x6 -> :sswitch_a
        0x7 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0xf -> :sswitch_6
        0x10 -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
