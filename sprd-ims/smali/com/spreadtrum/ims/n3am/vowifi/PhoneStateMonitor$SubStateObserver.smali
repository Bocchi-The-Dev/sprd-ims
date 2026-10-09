.class Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    .line 676
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 677
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 681
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content changed, check states."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->maybeWFCEnabledChanged()V

    .line 684
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->-$$Nest$mmaybeWFCPreferModeChanged(Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;)V

    .line 685
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor$SubStateObserver;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;->maybeVoLTEEnabledChanged()V

    .line 686
    return-void
.end method
