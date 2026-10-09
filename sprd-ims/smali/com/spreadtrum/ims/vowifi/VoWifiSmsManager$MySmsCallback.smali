.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;
.super Lcom/android/ims/internal/IVoWifiSmsCallback$Stub;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWifiSmsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the vowifi sms event callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not handle the ser callback as the json is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v1

    const/16 v2, -0xa

    invoke-virtual {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    return-void
.end method
