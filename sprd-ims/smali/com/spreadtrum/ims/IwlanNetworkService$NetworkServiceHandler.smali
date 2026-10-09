.class Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;
.super Landroid/os/Handler;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkServiceHandler"
.end annotation


# instance fields
.field IwlanNetworkServiceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/spreadtrum/ims/IwlanNetworkService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanNetworkService;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;->IwlanNetworkServiceWR:Ljava/lang/ref/WeakReference;

    .line 215
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$NetworkServiceHandler;->IwlanNetworkServiceWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanNetworkService;

    .line 219
    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage->outer reference is null. msg drop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanNetworkService;Ljava/lang/String;)V

    .line 224
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 227
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->notifyVoWiFiRegistrationChanged(I)V

    .line 229
    nop

    .line 233
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
