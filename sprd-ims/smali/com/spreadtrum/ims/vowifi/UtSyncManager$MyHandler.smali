.class Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;
.super Landroid/os/Handler;
.source "UtSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/UtSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/UtSyncManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/UtSyncManager;Landroid/os/Looper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    .line 36
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->-$$Nest$mqueryCLIRStatus(Lcom/spreadtrum/ims/vowifi/UtSyncManager;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/UtSyncManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/UtSyncManager;->-$$Nest$mqueryCWStatus(Lcom/spreadtrum/ims/vowifi/UtSyncManager;)V

    .line 44
    nop

    .line 49
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
