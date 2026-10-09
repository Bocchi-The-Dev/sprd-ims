.class Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 611
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive the intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 663
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Screen is on."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monScreenStateChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    goto/16 :goto_2

    .line 658
    :pswitch_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Screen is off."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monScreenStateChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    .line 660
    goto/16 :goto_2

    .line 653
    :pswitch_2
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI_STATE_CHANGED_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$mhandleWifiStateChangeBroadCast(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/content/Intent;)V

    .line 655
    goto/16 :goto_2

    .line 628
    :pswitch_3
    const-string p1, "networkType"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 629
    if-eq p1, v2, :cond_1

    .line 631
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connectivity changed, but not wifi."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    goto/16 :goto_2

    .line 635
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI connectivity changed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    nop

    .line 637
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 638
    if-nez p1, :cond_2

    .line 640
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connectivity changed, but network info is null."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    goto :goto_2

    .line 644
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 645
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 646
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monWifiStatusChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    goto :goto_2

    .line 647
    :cond_3
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 648
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monWifiStatusChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    goto :goto_2

    .line 625
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monPowerOff(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V

    .line 626
    goto :goto_2

    .line 622
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->getAirplaneMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monAirplaneModeChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    .line 623
    goto :goto_2

    .line 617
    :pswitch_6
    const-string p1, "phone"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 618
    iget-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$PhoneStateChangedReceiver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {p2, p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->notifySimStates(I)V

    .line 619
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimStates phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    nop

    .line 668
    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x6fcd6bbb -> :sswitch_6
        -0x56ac2893 -> :sswitch_5
        -0x45e5283a -> :sswitch_4
        -0x402b4235 -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        -0x18365bb -> :sswitch_1
        0x741706da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
