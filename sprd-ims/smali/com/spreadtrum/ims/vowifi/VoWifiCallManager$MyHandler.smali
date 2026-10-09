.class Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;
.super Landroid/os/Handler;
.source "VoWifiCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/os/Looper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1fe

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 147
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Participant;

    .line 148
    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getStatusForConfState()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v2, "dialing-out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout to invite the participant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Participant;->getAsCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Handle as invite failed, and send \'BYE\'."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v2

    const/16 v3, 0xc8

    const/16 v4, 0xd3

    invoke-static {v2, v3, v4}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 165
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 167
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    .line 168
    const-string v2, "disconnected"

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/Participant;->updateStatusForConfState(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->onParticipantDisconnected(Lcom/spreadtrum/ims/vowifi/Participant;)V

    .line 171
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->notifyConferenceStateUpdate()V

    .line 174
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->getConfCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$minviteCall(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 176
    :cond_1
    goto :goto_0

    .line 140
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$mhandleCallTermed(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 141
    :catch_0
    move-exception p1

    .line 142
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle the call term when retry as ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$manswerCall(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 137
    goto :goto_0

    .line 126
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallSession(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "The call do not receive BYE until now, terminate the call."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 131
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$minviteCall(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V

    .line 124
    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Ljava/lang/String;)V

    .line 121
    nop

    .line 182
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
