.class Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;
.super Landroid/os/Handler;
.source "VTManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VTManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/Looper;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 153
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage,unkwon message:what ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :sswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleDisconnect(Lcom/spreadtrum/ims/vt/VTManagerProxy;Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 145
    goto :goto_0

    .line 141
    :sswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->handleVTConnectionEstablished(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 142
    goto :goto_0

    .line 150
    :sswitch_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleImsQosReport(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/os/AsyncResult;)V

    .line 151
    goto :goto_0

    .line 147
    :sswitch_3
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleUpdateVideoQuality(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/Integer;)V

    .line 148
    goto :goto_0

    .line 138
    :sswitch_4
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleSetDeviceOrientation(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/Integer;)V

    .line 139
    goto :goto_0

    .line 134
    :sswitch_5
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    const-string v1, "handleMessage:what = EVENT_ON_SET_PAUSE_IMAGE"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleSetPauseImage(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/net/Uri;)V

    .line 136
    goto :goto_0

    .line 131
    :sswitch_6
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleSetDisplaySurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V

    .line 132
    goto :goto_0

    .line 128
    :sswitch_7
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleSetPreviewSurface(Lcom/spreadtrum/ims/vt/VTManagerProxy;Landroid/view/Surface;)V

    .line 129
    goto :goto_0

    .line 125
    :sswitch_8
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/VTManagerProxy$VTHandler;->this$0:Lcom/spreadtrum/ims/vt/VTManagerProxy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vt/VTManagerProxy;->-$$Nest$mhandleSetCamera(Lcom/spreadtrum/ims/vt/VTManagerProxy;Ljava/lang/String;)V

    .line 126
    nop

    .line 156
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_7
        0xca -> :sswitch_6
        0xcb -> :sswitch_5
        0xcc -> :sswitch_4
        0xcd -> :sswitch_3
        0x12f -> :sswitch_2
        0x258 -> :sswitch_1
        0x259 -> :sswitch_0
    .end sparse-switch
.end method
