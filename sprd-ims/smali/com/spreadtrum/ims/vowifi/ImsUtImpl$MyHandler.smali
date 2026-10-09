.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 240
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 241
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeUpdateCLIR(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V

    .line 243
    goto/16 :goto_0

    .line 236
    :sswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeQueryCLIR(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    .line 237
    goto/16 :goto_0

    .line 228
    :sswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 229
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2, v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeChangeBarringPwd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    goto/16 :goto_0

    .line 223
    :sswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 224
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeUpdateCallWaiting(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V

    .line 225
    goto/16 :goto_0

    .line 213
    :sswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 214
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v6, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mgetActionFromCFAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)I

    move-result v7

    .line 215
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v5, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mgetConditionFromCFReason(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)I

    move-result v8

    .line 216
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 217
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 218
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 219
    iget-object v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static/range {v6 .. v11}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeUpdateCallForward(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;IILjava/lang/String;II)V

    .line 220
    goto/16 :goto_0

    .line 203
    :sswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 204
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v6, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mgetActionFromCFAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)I

    move-result v7

    .line 205
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 206
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 208
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 209
    iget-object v6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static/range {v6 .. v11}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeUpdateCallForward(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;IILjava/lang/String;II)V

    .line 210
    goto/16 :goto_0

    .line 194
    :sswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 195
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    iget-object v1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 197
    iget-object v4, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 199
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeUpdateCallBarring(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;IZLjava/lang/String;I)V

    .line 200
    goto/16 :goto_0

    .line 189
    :sswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeQueryCallWaiting(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    .line 190
    goto/16 :goto_0

    .line 185
    :sswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeQueryCallForward(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    .line 186
    goto/16 :goto_0

    .line 178
    :sswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 179
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mnativeQueryCallBarring(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V

    .line 181
    goto/16 :goto_0

    .line 162
    :sswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmCmdManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->getFirstCmd()Ljava/lang/Integer;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 167
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x324

    invoke-direct {p1, v0, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 169
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmCmdManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore the cmd timeout as timeout key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", but the first cmd key is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    goto :goto_0

    .line 158
    :sswitch_b
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 153
    :sswitch_c
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->disabled()V

    .line 154
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1, v5}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fputmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V

    .line 155
    goto :goto_0

    .line 148
    :sswitch_d
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handle message MSG_PROCESS_PENDING."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmCmdManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->-$$Nest$mprocessPendingAction(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;)V

    .line 150
    nop

    .line 246
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_d
        -0x2 -> :sswitch_c
        -0x1 -> :sswitch_b
        0x0 -> :sswitch_a
        0x65 -> :sswitch_9
        0x66 -> :sswitch_8
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6a -> :sswitch_5
        0x6b -> :sswitch_4
        0x6c -> :sswitch_3
        0x6d -> :sswitch_6
        0x6e -> :sswitch_9
        0x6f -> :sswitch_2
        0x71 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method
