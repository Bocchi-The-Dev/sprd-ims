.class Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 694
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", handle as wifi connect."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monWifiStatusChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    .line 696
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 707
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$mhandleLinkPropertiesChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/net/LinkProperties;)V

    .line 709
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 700
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lost network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", handle as wifi disconnect."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$fputmLinkProperties(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/net/LinkProperties;)V

    .line 702
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$WifiStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$monWifiStatusChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;I)V

    .line 703
    return-void
.end method
