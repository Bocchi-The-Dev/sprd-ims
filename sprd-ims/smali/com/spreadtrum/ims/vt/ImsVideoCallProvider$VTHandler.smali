.class Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Landroid/os/Looper;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 80
    :sswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmVTHandler(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsDriverCall;->getVideoCallMediaDirection()I

    move-result v2

    .line 83
    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v3}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v3

    iget-object v3, v3, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsDriverCall:Lcom/spreadtrum/ims/ImsDriverCall;

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 84
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 87
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 88
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v3}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->responseVolteCallMediaChange(ZILandroid/os/Message;)V

    .line 90
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showRequestStateToast()V

    .line 91
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showCapabilityChangeToast()V

    .line 92
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 93
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fputmRemoteRequestProfile(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile;)V

    .line 94
    goto/16 :goto_0

    .line 107
    :sswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    const-string v2, "handle message EVENT_VOLTE_CALL_REQUEST_MEDIA_CHANGED_TIMEOUT"

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsCallSessionImpl;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->callMediaChangeRequestTimeOut(ILandroid/os/Message;)V

    .line 116
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmVTManagerProxy(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/VTManagerProxy;

    move-result-object p1

    const/16 v0, 0xc8

    const/16 v1, 0xc9

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->notifyImsEventListener(II)V

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->getLocalRequestProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 122
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->showRequestStateToast()V

    .line 123
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 125
    goto :goto_0

    .line 98
    :sswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 99
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mhandleSrvccStateChanged(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;[I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Srvcc exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V

    .line 104
    nop

    .line 129
    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method
