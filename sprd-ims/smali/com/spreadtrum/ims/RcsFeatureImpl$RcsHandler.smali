.class public Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;
.super Landroid/os/Handler;
.source "RcsFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/RcsFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/RcsFeatureImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/RcsFeatureImpl;Landroid/os/Looper;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;->this$0:Lcom/spreadtrum/ims/RcsFeatureImpl;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;->this$0:Lcom/spreadtrum/ims/RcsFeatureImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/RcsFeatureImpl;->log(Ljava/lang/String;)V

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/RcsFeatureImpl$RcsHandler;->this$0:Lcom/spreadtrum/ims/RcsFeatureImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/RcsFeatureImpl;->-$$Nest$mhandleSetUceCapabilities(Lcom/spreadtrum/ims/RcsFeatureImpl;Landroid/os/AsyncResult;)V

    .line 133
    nop

    .line 137
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
