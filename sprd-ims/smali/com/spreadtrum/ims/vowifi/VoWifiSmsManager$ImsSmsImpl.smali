.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSmsImpl"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

.field private mReady:Z

.field private mRegisterStatusReportFromCS:Z

.field private mSubId:I

.field private mTag:Ljava/lang/String;

.field private mTpMrHelper:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$monGetTpMr(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onGetTpMr(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetTpMrError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onGetTpMrError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V

    return-void
.end method

.method protected constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;ILcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 3

    .line 380
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    .line 375
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTpMrHelper:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    .line 378
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 381
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ImsSmsImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    .line 384
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    .line 385
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 386
    new-instance p3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-direct {p3, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;I)V

    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTpMrHelper:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    .line 387
    return-void
.end method

.method private getCauseFromResult(I)I
    .locals 0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 584
    :pswitch_0
    const/16 p1, 0xff

    return p1

    .line 582
    :pswitch_1
    const/16 p1, 0xd3

    return p1

    .line 580
    :pswitch_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGetTpMr(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;Landroid/os/Bundle;)V
    .locals 3

    .line 589
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 595
    :cond_0
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 597
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the TP-MR from SIM, current TP-MR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x1

    if-ltz p2, :cond_2

    const/16 v1, 0xff

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    add-int/2addr p2, v0

    iput p2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    .line 603
    iget-object p2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_pdu:[B

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    goto :goto_1

    .line 599
    :cond_2
    :goto_0
    const/4 p2, 0x0

    iput p2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    .line 600
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_pdu:[B

    aput-byte p2, p1, v0

    .line 614
    :goto_1
    return-void

    .line 590
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to get the TP-MR. sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onGetTpMrError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V

    .line 592
    return-void
.end method

.method private onGetTpMrError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V
    .locals 1

    .line 617
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;I)V

    .line 618
    return-void
.end method

.method private onSendSmsError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;I)V
    .locals 8

    .line 621
    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    nop

    .line 625
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    if-eqz v1, :cond_1

    .line 629
    iget v3, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget v4, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsResultError(IIIII)V

    .line 632
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error to send the sms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    return-void

    .line 627
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acknowledge the sms: token["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], messageRef["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], result["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->getCauseFromResult(I)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IVoWifiSms;->acknowledgeSms(III)I

    move-result p2

    .line 455
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 457
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Native failed to acknowledge sms[token="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 462
    :cond_1
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 463
    :try_start_1
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-direct {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 450
    :cond_2
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to acknowledge sms as mReady: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 462
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 463
    :try_start_3
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-direct {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    monitor-exit p2

    .line 451
    return-void

    .line 464
    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 462
    :catchall_2
    move-exception p2

    goto :goto_2

    .line 459
    :catch_0
    move-exception p2

    .line 460
    :try_start_4
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to acknowledge the sms as catch the ex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 462
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 463
    :try_start_5
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-direct {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    monitor-exit p2

    .line 465
    :goto_1
    nop

    .line 466
    return-void

    .line 464
    :catchall_3
    move-exception p1

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 462
    :goto_2
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p3

    monitor-enter p3

    .line 463
    :try_start_6
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-direct {v1, v2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 465
    throw p2

    .line 464
    :catchall_4
    move-exception p1

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acknowledge the sms report: token["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], messageRef["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], result["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-static {v0, v1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$mfindSmsByToken(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v0

    .line 477
    :try_start_0
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_statusReportFromCS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->getCauseFromResult(I)I

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IVoWifiSms;->acknowledgeSmsReport(III)I

    move-result p1

    .line 485
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 487
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Native failed to acknowledge status report for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 492
    :cond_1
    if-eqz v0, :cond_5

    .line 493
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 494
    :try_start_1
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit p1

    goto/16 :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 479
    :cond_2
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acknowledge sms report as mReady: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 480
    if-nez v0, :cond_3

    const-string p3, ""

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 479
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 492
    if-eqz v0, :cond_4

    .line 493
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 494
    :try_start_3
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    .line 481
    :cond_4
    :goto_2
    return-void

    .line 492
    :catchall_2
    move-exception p1

    goto :goto_4

    .line 489
    :catch_0
    move-exception p1

    .line 490
    :try_start_4
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to acknowledge the sms report as catch the ex: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 492
    if-eqz v0, :cond_5

    .line 493
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 494
    :try_start_5
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit p1

    goto :goto_3

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p2

    .line 498
    :cond_5
    :goto_3
    return-void

    .line 492
    :goto_4
    if-eqz v0, :cond_6

    .line 493
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 494
    :try_start_6
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit p2

    goto :goto_5

    :catchall_4
    move-exception p1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    .line 497
    :cond_6
    :goto_5
    throw p1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForImsNewSmsStatusReport(Landroid/os/Handler;)V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    .line 394
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-regsiter sms status report from CS for cur sub["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 398
    return-void
.end method

.method public onReady()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to MmTelFeatureConnection. SmsImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ready."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public onUnReady()V
    .locals 5

    .line 533
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    const-string v1, "Already ready, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 542
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    const-string v2, "There isn\'t any sms, do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    monitor-exit v0

    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    const-string v2, "As un-ready, we\'d like to handle all the sms failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    .line 552
    iget v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    if-eq v2, v3, :cond_2

    .line 553
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as un ready phone["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    goto :goto_0

    .line 557
    :cond_2
    iget v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 567
    :pswitch_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " don\'t receive status report, but smsImpl disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 569
    :try_start_1
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 570
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 560
    :pswitch_1
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as send failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsError(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;I)V

    .line 562
    nop

    .line 573
    :goto_1
    goto/16 :goto_0

    .line 574
    :cond_3
    return-void

    .line 549
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7

    .line 504
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send the sms: token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], messageRef["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], smsc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "], retry["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "], pdu["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 506
    invoke-static {p6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "]"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 504
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-boolean p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmRadioInteractor(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    new-instance p3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;IIII[B)V

    .line 520
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p4

    monitor-enter p4

    .line 521
    :try_start_0
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTpMrHelper:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-virtual {p2, p1, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;->getTpMr(ILcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V

    .line 525
    return-void

    .line 522
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 510
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to send sms as mReady: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-boolean p5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", mISms: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p5}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", mRadioInteractor: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p5}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmRadioInteractor(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsResultError(IIIII)V

    .line 515
    return-void
.end method

.method public updateReadyState(Z)V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update ImsSmsImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    if-ne p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] do not changed, ignore it."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 410
    :cond_0
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mReady:Z

    .line 412
    if-eqz p1, :cond_3

    .line 413
    iget p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    .line 414
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    .line 415
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl ready on sub["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    if-eq v0, p1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unregisterForImsNewSmsStatusReport(Landroid/os/Handler;)V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    .line 422
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-regsiter sms status report from CS for sub["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    iget-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Landroid/content/Context;

    move-result-object p1

    .line 426
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSmsStatusReportFromCS(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 428
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRadioInterface:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v0

    const/16 v1, -0xb

    invoke-virtual {p1, v0, v1, p0}, Lcom/spreadtrum/ims/ImsRadioInterface;->registerForImsNewSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mRegisterStatusReportFromCS:Z

    .line 431
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regsiter sms status report from CS for sub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    goto :goto_0

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->-$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    move-result-object v0

    const/16 v1, -0xc

    .line 436
    invoke-virtual {v0, v1, p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 435
    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    :goto_0
    return-void
.end method
