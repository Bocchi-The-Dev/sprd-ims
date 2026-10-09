.class final Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRadioInterface.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    const-string v1, "serviceDied"

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLog(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioInterface$RadioProxyDeathRecipient;->this$0:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, v1, Lcom/spreadtrum/ims/ImsRadioInterface;->mRilHandler:Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v2, p1}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method
