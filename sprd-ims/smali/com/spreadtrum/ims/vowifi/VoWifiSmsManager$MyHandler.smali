.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;
.super Landroid/os/Handler;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Landroid/os/Looper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method

.method private getMessageName(I)Ljava/lang/String;
    .locals 2

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_TPMR for sms token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_0
    const-string p1, "MSG_HANDLE_EVENT"

    return-object p1

    .line 121
    :pswitch_1
    const-string p1, "MSG_RECEIVE_STATUS_REPORT"

    return-object p1

    .line 123
    :pswitch_2
    const-string p1, "MSG_ON_UNREADY"

    return-object p1

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 70
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->getMessageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Ljava/lang/String;)V

    .line 75
    goto/16 :goto_1

    .line 77
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 78
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received the status report from CS."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Async result is null. Please check it."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto/16 :goto_1

    .line 85
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 86
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 87
    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 93
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;)I

    move-result v4

    iget v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-static {v3, v4, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$mfindSmsByMessageRef(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v3

    .line 94
    if-nez v3, :cond_2

    .line 95
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find the sms with the msgRef["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for the phone["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] when receive the status report from CS."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_1

    .line 100
    :cond_2
    const/4 v0, 0x3

    iput v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    .line 101
    iput-boolean v2, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_statusReportFromCS:Z

    .line 102
    iget-object v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    iget v1, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget-object v2, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 103
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to handle the SR from CS as pdu is invalid."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_1

    .line 107
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 109
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onUnReady()V

    .line 114
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
