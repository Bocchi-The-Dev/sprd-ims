.class Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;
.super Ljava/util/HashMap;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingActionMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;-><init>(Lcom/spreadtrum/ims/vowifi/ServiceManager;)V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Integer;Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;)Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;
    .locals 4

    .line 196
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add a new pending action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 199
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->this$0:Lcom/spreadtrum/ims/vowifi/ServiceManager;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ServiceManager;->mHandler:Landroid/os/Handler;

    iget p2, p2, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_retryAfterMillis:I

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ServiceManager$PendingActionMap;->put(Ljava/lang/Integer;Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;)Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    move-result-object p1

    return-object p1
.end method
