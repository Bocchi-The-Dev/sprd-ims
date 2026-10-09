.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;
.super Ljava/lang/Object;
.source "ImsUtImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(I)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fputmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V

    .line 286
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 288
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmCmdManager(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$CmdManager;->onAllActionFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 289
    return-void
.end method

.method public onInterfaceChanged(Lcom/android/ims/internal/IVoWifiUT;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fputmIUT(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Lcom/android/ims/internal/IVoWifiUT;)V

    .line 255
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmIUT(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IVoWifiUT;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmIUT(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/android/ims/internal/IVoWifiUT;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmUtServiceCallback(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtServiceCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IVoWifiUT;->registerCallback(Lcom/android/ims/internal/IVoWifiUTCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception p1

    .line 261
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register callback for UT as catch RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void
.end method

.method public onPrepareFinished(IZ)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 269
    :cond_0
    if-nez p2, :cond_1

    .line 270
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare failed, subId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] handle all the cmd as failed."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fputmUtEnabled(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Z)V

    .line 275
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;

    move-result-object p1

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method
