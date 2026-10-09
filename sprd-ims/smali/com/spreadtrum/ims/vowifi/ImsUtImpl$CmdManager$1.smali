.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;
.super Ljava/lang/Object;
.source "ImsUtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->addCmd(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;->this$1:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;->this$1:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager$1;->this$1:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->prepare(I)V

    .line 1481
    return-void
.end method
