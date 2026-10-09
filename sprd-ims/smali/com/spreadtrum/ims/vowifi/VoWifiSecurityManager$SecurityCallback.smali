.class Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;
.super Lcom/android/ims/internal/IVoWifiSecurityCallback$Stub;
.source "VoWifiSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IVoWifiSecurityCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;)V

    return-void
.end method


# virtual methods
.method public onS2bStateChanged(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get the security callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not handle the security callback as the json is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 319
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v1, "session_id"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 321
    iget-object v3, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mfindRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object v3

    .line 322
    if-nez v3, :cond_1

    .line 323
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find request for the sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 327
    :cond_1
    const-string v4, "event_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    const/4 v5, 0x1

    const-string v6, "state_code"

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 375
    :pswitch_0
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 376
    const v2, 0xd2c7

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    .line 377
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attach stopped, errorCode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", for handover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v0, v3, v5, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mattachStopped(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;ZI)V

    .line 380
    goto/16 :goto_1

    .line 369
    :pswitch_1
    const-string v1, "progress_state"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 370
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach progress state changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v0, v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mattachProcessing(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V

    .line 372
    goto/16 :goto_1

    .line 363
    :pswitch_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 364
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach failed, errorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v0, v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mattachFailed(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V

    .line 366
    goto/16 :goto_1

    .line 330
    :pswitch_3
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attach success for session: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "local_ip4"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 332
    const-string v4, "local_ip6"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 333
    const-string v4, "pcscf_ip4"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 334
    const-string v4, "pcscf_ip6"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 335
    const-string v4, "dns_ip4"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 336
    const-string v4, "dns_ip6"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 337
    const-string v4, "pref_ip4"

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 338
    const-string v6, "support_mobike"

    .line 339
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 341
    new-instance v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    iget-object v6, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget-object v6, v6, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mContext:Landroid/content/Context;

    iget v8, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    .line 342
    invoke-static {v6, v8}, Lcom/spreadtrum/ims/vowifi/Utilities;->getImsiForSub(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v2

    move/from16 v16, v4

    invoke-direct/range {v8 .. v17}, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 347
    if-eqz v4, :cond_3

    move v5, v7

    .line 348
    :cond_3
    iget-object v4, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v4, v1, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->setIPVersion(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    iput v5, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 350
    invoke-virtual {v3, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->updateConfig(Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;)V

    .line 351
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mattachSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;)V

    goto :goto_1

    .line 354
    :cond_4
    iget-object v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v1, v3, v7}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mdeattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V

    .line 357
    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-static {v0, v3, v7}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$mattachFailed(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    nop

    .line 386
    :goto_1
    goto :goto_2

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the security callback as catch the JSONException, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
