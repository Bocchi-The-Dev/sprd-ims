.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;
.super Lcom/android/ims/internal/IVoWifiUTCallback$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWifiUTCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;)V
    .locals 3

    .line 1888
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the vowifi ser event callback in UtImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This UtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is disabled, needn\'t handle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void

    .line 1896
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not handle the ser callback as the json is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return-void

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1902
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1903
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1904
    return-void
.end method
