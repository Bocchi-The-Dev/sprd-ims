.class Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;
.super Ljava/lang/Object;
.source "AcsProvisioningSMS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;Landroid/content/Intent;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 79
    const-string v0, "Failed to update Config with OTP for requestUri : "

    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS provider receiver - Received broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    .line 84
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    const-string v2, "pdus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 92
    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    const-string v3, "Receiving binary SMS"

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    .line 99
    array-length v2, v1

    new-array v3, v2, [Landroid/telephony/SmsMessage;

    .line 101
    const/4 v4, 0x0

    new-array v5, v4, [B

    .line 104
    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_3

    .line 105
    aget-object v7, v1, v6

    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v6

    .line 107
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    .line 108
    array-length v8, v5

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 109
    array-length v9, v5

    invoke-static {v5, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    array-length v5, v5

    array-length v9, v7

    invoke-static {v7, v4, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    nop

    .line 104
    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    goto :goto_0

    .line 115
    :cond_3
    new-instance v1, Ljava/lang/String;

    const-string v2, "UCS2"

    invoke-direct {v1, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    const-string v3, "Binary SMS received with :"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-static {v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->val$requestUri:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->updateConfigWithOTP(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v1, v1, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    goto/16 :goto_2

    .line 93
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v1, v1, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    const-string v2, "Bundle contains no raw PDUs"

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->val$requestUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    goto :goto_3

    .line 123
    :catch_1
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v2, v2, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->val$requestUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Message="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v2, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->isFirstProvisioningAfterBoot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 130
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v0, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retry()V

    goto :goto_2

    .line 120
    :catch_2
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v1, v1, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'UCS2\'format not supported for requestUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1$1;->this$1:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    iget-object v3, v3, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;->val$requestUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->-$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    .line 135
    :cond_5
    :goto_2
    nop

    .line 136
    :goto_3
    return-void
.end method
