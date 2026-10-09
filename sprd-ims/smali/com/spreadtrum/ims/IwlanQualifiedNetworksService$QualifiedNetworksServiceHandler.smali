.class Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "IwlanQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field IwlanQualifiedNetworksServiceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->IwlanQualifiedNetworksServiceWR:Ljava/lang/ref/WeakReference;

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$QualifiedNetworksServiceHandler;->IwlanQualifiedNetworksServiceWR:Ljava/lang/ref/WeakReference;

    .line 254
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    .line 255
    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 257
    return-void

    .line 259
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

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 260
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 276
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->notifyMmsQualifiedNetworkChanged(I)V

    .line 278
    goto :goto_0

    .line 269
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 270
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->notifyIwlanQualifiedNetworkChanged(I)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->notifyMmsQualifiedNetworkChanged(I)V

    .line 273
    goto :goto_0

    .line 263
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 264
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->notifyIwlanQualifiedNetworkChanged(I)V

    .line 266
    nop

    .line 283
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
