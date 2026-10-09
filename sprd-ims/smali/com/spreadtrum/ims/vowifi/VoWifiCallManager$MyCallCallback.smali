.class Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;
.super Lcom/android/ims/internal/IVoWifiCallCallback$Stub;
.source "VoWifiCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)V
    .locals 0

    .line 2343
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWifiCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;)V
    .locals 2

    .line 2346
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get the vowifi ser event callback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not handle the ser callback as the json is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    return-void

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2353
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2354
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyCallCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2355
    return-void
.end method
