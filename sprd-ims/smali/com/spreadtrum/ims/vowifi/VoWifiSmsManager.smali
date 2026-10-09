.class public Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.super Lcom/spreadtrum/ims/vowifi/ServiceManager;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ISmsChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_HANDLE_EVENT:I = -0xa

.field private static final MSG_ON_UNREADY:I = -0xc

.field private static final MSG_RECEIVE_STATUS_REPORT:I = -0xb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

.field private mISms:Lcom/android/ims/internal/IVoWifiSms;

.field private mPrimaryCard:I

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mSmsCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;

.field private mSmsImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mEventHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISms(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/ims/internal/IVoWifiSms;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mISms:Lcom/android/ims/internal/IVoWifiSms;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioInteractor(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsList(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindSmsByMessageRef(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByMessageRef(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindSmsByToken(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByToken(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->handleEvent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_SMS:Ljava/lang/String;

    const-string v1, "com.spreadtrum.vowifi"

    const-string v2, "com.spreadtrum.vowifi.service.SmsService"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 p2, -0x1

    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    .line 55
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback-IA;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    .line 57
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    .line 138
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mContext:Landroid/content/Context;

    .line 139
    new-instance p2, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {p2, p1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    .line 141
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SmsManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 144
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mEventHandler:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MyHandler;

    .line 145
    return-void
.end method

.method private findSms(III)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 345
    monitor-exit v0

    return-object v3

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    .line 349
    const/16 v4, -0x3e8

    .line 350
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 355
    :pswitch_0
    iget v4, v2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    goto :goto_1

    .line 352
    :pswitch_1
    iget v4, v2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    .line 353
    nop

    .line 358
    :goto_1
    if-ne v4, p3, :cond_2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    iget v4, v2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    if-ne p2, v4, :cond_2

    .line 360
    :cond_1
    monitor-exit v0

    return-object v2

    .line 362
    :cond_2
    goto :goto_0

    .line 365
    :cond_3
    monitor-exit v0

    return-object v3

    .line 366
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findSmsByMessageRef(I)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 1

    .line 334
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByMessageRef(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p1

    return-object p1
.end method

.method private findSmsByMessageRef(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 1

    .line 338
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSms(III)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p1

    return-object p1
.end method

.method private findSmsByToken(I)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 1

    .line 326
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByToken(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p1

    return-object p1
.end method

.method private findSmsByToken(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
    .locals 1

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSms(III)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object p1

    return-object p1
.end method

.method private generateToken()I
    .locals 2

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 322
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 11

    .line 211
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    const-string v1, "Shouldn\'t be here! Can not handle the event as the json is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 216
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    const-string v1, "event_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle the event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, "event_code"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 221
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 259
    :pswitch_0
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const-string v0, "Failed to notify sms received as pdu is empty."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mContext:Landroid/content/Context;

    .line 266
    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 267
    if-nez v1, :cond_2

    .line 268
    const-string v0, "Can not handle the sms received event as SmsImpl is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->generateToken()I

    move-result v2

    .line 273
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 275
    new-instance v10, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    iget v6, v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    move-object v3, v10

    move-object v4, v1

    move v5, v2

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;IIII[B)V

    .line 277
    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->getSmsFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    goto/16 :goto_2

    .line 279
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 284
    :pswitch_1
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    const-string v0, "Failed to notify sms received as pdu is empty."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 291
    :cond_3
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 292
    if-eqz v0, :cond_6

    array-length v1, v0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_4

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 298
    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-direct {p0, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByMessageRef(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v3

    .line 299
    if-nez v3, :cond_5

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find the sms with the msgRef["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for the phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByMessageRef(I)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v3

    .line 303
    if-nez v3, :cond_5

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Just to find the sms with the msgRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], but can not find."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto/16 :goto_2

    .line 310
    :cond_5
    const/4 v1, 0x3

    iput v1, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    .line 311
    iget-object v1, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    iget v2, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget-object v3, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_format:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 312
    goto/16 :goto_2

    .line 293
    :cond_6
    :goto_0
    const-string v0, "Failed to handle the SR as pdu is invalid."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto/16 :goto_2

    .line 223
    :pswitch_2
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 224
    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 226
    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    invoke-direct {p0, v3, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByToken(II)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v3

    .line 227
    if-nez v3, :cond_7

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find the sms by the token["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->findSmsByToken(I)Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    move-result-object v3

    .line 231
    if-nez v3, :cond_7

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find the sms just by the token: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto :goto_2

    .line 237
    :cond_7
    if-eqz v0, :cond_9

    .line 238
    const/4 v0, 0x2

    iput v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    .line 239
    iget-boolean v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_requireStatusReport:Z

    if-nez v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 241
    :try_start_5
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 244
    :cond_8
    :goto_1
    iget-object v0, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    iget v1, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget v2, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsResultSuccess(II)V

    goto :goto_2

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 248
    :try_start_7
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 251
    :try_start_8
    iget-object v4, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    iget v5, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget v6, v3, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->onSendSmsResultError(IIIII)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 256
    goto :goto_2

    .line 249
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 317
    :goto_2
    goto :goto_3

    .line 315
    :catch_0
    move-exception v0

    .line 316
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "As catch the exception, failed to handle the event for the json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRegisterState(IZ)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->updateReadyState(Z)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public getSmsImplementation(ILcom/spreadtrum/ims/ImsRadioInterface;)Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 2

    .line 171
    nop

    .line 172
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 173
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;ILcom/spreadtrum/ims/ImsRadioInterface;)V

    .line 174
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 177
    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;ILcom/spreadtrum/ims/ImsRadioInterface;)V

    .line 179
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onNativeReset()V
    .locals 1

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mISms:Lcom/android/ims/internal/IVoWifiSms;

    .line 153
    return-void
.end method

.method protected onServiceChanged()V
    .locals 4

    .line 158
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mISms:Lcom/android/ims/internal/IVoWifiSms;

    .line 159
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IVoWifiSms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiSms;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mISms:Lcom/android/ims/internal/IVoWifiSms;

    .line 161
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$MySmsCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiSms;->registerCallback(Lcom/android/ims/internal/IVoWifiSmsCallback;)Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->clearPendingList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not register callback as catch the RemoteException. ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    return-void
.end method

.method public updateRegisterState(I)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mSmsImpls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    .line 193
    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    .line 195
    invoke-direct {p0, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->updateRegisterState(IZ)V

    .line 196
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->mPrimaryCard:I

    .line 199
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;->updateRegisterState(IZ)V

    .line 200
    return-void
.end method
