.class Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;
.super Lcom/android/ims/internal/IVoWifiRegisterCallback$Stub;
.source "VoWifiRegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterCallback"
.end annotation


# instance fields
.field private mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWifiRegisterCallback$Stub;-><init>()V

    .line 526
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    .line 529
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    .line 530
    return-void
.end method


# virtual methods
.method public onRegisterStateChanged(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->mRegisterMgr:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    monitor-enter v0

    .line 535
    :try_start_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the register state changed callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 543
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 544
    const-string p1, "event_code"

    const/16 v2, 0x32

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 546
    const-string v2, "event_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle the register event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "state_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 550
    const-string v4, "retry_after"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 551
    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 605
    :pswitch_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    .line 606
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object v1

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mState:I

    invoke-interface {p1, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onRegisterStateChanged(II)V

    goto/16 :goto_0

    .line 598
    :pswitch_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    .line 599
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v3, v2, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onRefreshRegFinished(ZII)V

    goto/16 :goto_0

    .line 593
    :pswitch_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    .line 594
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v5, v3, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onRefreshRegFinished(ZII)V

    goto/16 :goto_0

    .line 580
    :pswitch_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$mupdateRegisterState(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;I)V

    .line 582
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_1

    .line 583
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v2, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLogout(II)V

    .line 586
    :cond_1
    if-nez v4, :cond_3

    .line 588
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fputmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;)V

    goto/16 :goto_0

    .line 564
    :pswitch_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$mupdateRegisterState(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;I)V

    .line 566
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    .line 567
    if-gez v4, :cond_2

    .line 570
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->calcRetryAfter()I

    move-result v4

    .line 571
    const/high16 v2, -0x80000000

    .line 572
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle as login failed for retry after: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v3, v2, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLoginFinished(ZII)V

    goto :goto_0

    .line 553
    :pswitch_5
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    const-string v2, "P-Associated-URI"

    .line 554
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mRegPAssociatedUri:Ljava/lang/String;

    .line 556
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$mupdateRegisterState(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;I)V

    .line 557
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    if-eqz p1, :cond_3

    .line 558
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->successed()V

    .line 559
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$fgetmRequest(Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;)Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;

    move-result-object p1

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;

    invoke-interface {p1, v5, v3, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;->onLoginFinished(ZII)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :cond_3
    :goto_0
    goto :goto_1

    .line 611
    :catch_0
    move-exception p1

    .line 612
    :try_start_2
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle register state changed callback as ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_1
    monitor-exit v0

    .line 615
    return-void

    .line 538
    :cond_4
    :goto_2
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Can not handle the callback, please check the request or response."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v0

    return-void

    .line 614
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
