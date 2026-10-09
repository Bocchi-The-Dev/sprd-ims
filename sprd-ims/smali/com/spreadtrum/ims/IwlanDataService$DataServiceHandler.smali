.class Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataServiceHandler"
.end annotation


# instance fields
.field IwlanDataServiceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/spreadtrum/ims/IwlanDataService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;)V
    .locals 1

    .line 499
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;->IwlanDataServiceWR:Ljava/lang/ref/WeakReference;

    .line 501
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$DataServiceHandler;->IwlanDataServiceWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/IwlanDataService;

    .line 505
    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 507
    return-void

    .line 509
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

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 510
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 513
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 514
    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/IwlanDataService;->notifyVoWiFiAttachStateChanged(II)V

    .line 516
    nop

    .line 520
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
