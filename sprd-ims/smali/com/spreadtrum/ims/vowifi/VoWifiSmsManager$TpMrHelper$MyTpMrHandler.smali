.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;
.super Landroid/os/Handler;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTpMrHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;Landroid/os/Looper;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    .line 755
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 756
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 760
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 777
    iget v0, p1, Landroid/os/Message;->what:I

    if-lez v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$mgetFirstRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_token:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 780
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmTpMrHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;

    move-result-object v0

    const/16 v1, -0x16

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$mfindSmsByToken(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmTag(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle the get Tp-Mr result for the sms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->-$$Nest$monGetTpMr(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;Landroid/os/Bundle;)V

    goto :goto_0

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmTag(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Tp-Mr finished, bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$mhandleNextRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)V

    .line 764
    goto :goto_1

    .line 767
    :pswitch_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmTag(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get the TpMr timeout. Handle as get tpmr error."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$mhandleNextRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)V

    .line 770
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    .line 771
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->-$$Nest$monGetTpMrError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V

    .line 772
    goto :goto_1

    .line 787
    :cond_0
    :goto_0
    goto :goto_1

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$MyTpMrHandler;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->-$$Nest$fgetmTag(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore the get tpmr result for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
