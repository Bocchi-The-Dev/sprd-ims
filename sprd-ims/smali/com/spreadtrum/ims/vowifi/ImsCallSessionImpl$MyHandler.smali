.class Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/os/Looper;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 155
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Catch the RemoteException e: "

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v3, v4, p1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 164
    :catch_0
    move-exception p1

    .line 165
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to give the call session start failed callback."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_3

    .line 173
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    const/16 v0, 0xc8

    const/16 v1, 0xcf

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 177
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    const-string v0, "Connect to conference server timeout"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mhandleMergeActionFailed(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmCallManager(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 181
    if-eqz p1, :cond_2

    .line 182
    const/16 v0, 0x1f5

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_2
    goto :goto_1

    .line 184
    :catch_1
    move-exception p1

    .line 185
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to handle merge failed event as catch the ex."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_1
    return-void

    .line 188
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x16

    if-ne v0, v2, :cond_4

    .line 189
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 190
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void

    .line 192
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 198
    :try_start_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v0

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v3, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    goto :goto_2

    .line 201
    :catch_2
    move-exception p1

    .line 202
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to give the call hold failed callback."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    :goto_2
    return-void

    .line 209
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 210
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle the internal action: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 248
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$minviteParticipantsInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/util/List;)V

    goto/16 :goto_3

    .line 244
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 244
    invoke-static {p1, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mupdateInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 246
    goto/16 :goto_3

    .line 241
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mmergeInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 242
    goto/16 :goto_3

    .line 238
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mresumeInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 239
    goto/16 :goto_3

    .line 235
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mholdInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 236
    goto/16 :goto_3

    .line 232
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mterminateInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 233
    goto :goto_3

    .line 229
    :pswitch_6
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mrejectInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V

    .line 230
    goto :goto_3

    .line 225
    :pswitch_7
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 225
    invoke-static {p1, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$macceptInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 227
    goto :goto_3

    .line 221
    :pswitch_8
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 221
    invoke-static {p1, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mstartConferenceInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 223
    goto :goto_3

    .line 217
    :pswitch_9
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v2, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 217
    invoke-static {p1, v2, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$mstartInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 219
    goto :goto_3

    .line 214
    :pswitch_a
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$msetMuteInternal(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 215
    nop

    .line 253
    :goto_3
    goto :goto_4

    .line 251
    :catch_3
    move-exception p1

    .line 252
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch the RemoteException when handle the action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
