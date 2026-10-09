.class public Lcom/spreadtrum/ims/acs/AcsProvisioningManager;
.super Ljava/lang/Object;
.source "AcsProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;
    }
.end annotation


# static fields
.field public static final ACTION_RETRY:Ljava/lang/String; = "com.spreadtrum.ims.acs.AcsController.ACTION_RETRY"

.field private static final BUFFER_READER_SIZE:I = 0x3e8

.field private static final HTTP_STATUS_ERROR_NETWORK_AUTHENTICATION_REQUIRED:I = 0x1ff

.field private static final LOG_TAG:Ljava/lang/String; = "AcsProvisioningManager"

.field public static NETWORK_ACCESS_2G:I = 0x0

.field public static NETWORK_ACCESS_3G:I = 0x0

.field public static NETWORK_ACCESS_3GPLUS:I = 0x0

.field public static NETWORK_ACCESS_4G:I = 0x0

.field public static NETWORK_ACCESS_UNKNOWN:I = 0x0

.field public static NETWORK_ACCESS_WIFI:I = 0x0

.field private static final OTP_TIME_OUT:I = 0x1d4c0

.field private static final PARAM_CLIENT_VENDOR:Ljava/lang/String; = "client_vendor"

.field private static final PARAM_CLIENT_VERSION:Ljava/lang/String; = "client_version"

.field private static final PARAM_IMEI:Ljava/lang/String; = "IMEI"

.field private static final PARAM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final PARAM_MSISDN:Ljava/lang/String; = "msisdn"

.field private static final PARAM_RCS_PROFILE:Ljava/lang/String; = "rcs_profile"

.field private static final PARAM_RCS_VERSION:Ljava/lang/String; = "rcs_version"

.field private static final PARAM_SMS_PORT:Ljava/lang/String; = "SMS_port"

.field private static final PARAM_TERMINAL_MODEL:Ljava/lang/String; = "terminal_model"

.field private static final PARAM_TERMINAL_SW_VERSION:Ljava/lang/String; = "terminal_sw_version"

.field private static final PARAM_TERMINAL_VENDOR:Ljava/lang/String; = "terminal_vendor"

.field private static final PARAM_TOKEN:Ljava/lang/String; = "token"

.field private static final PARAM_VERS:Ljava/lang/String; = "vers"

.field public static final PDUS:Ljava/lang/String; = "pdus"

.field private static final PROVISIONING_OPERATIONS_THREAD_NAME:Ljava/lang/String; = "ProvisioningOps"

.field private static final PROVISIONING_URI_FILENAME:Ljava/lang/String; = "rcs_provisioning_uri.txt"

.field private static final RESULT_CONTENT:Ljava/lang/String; = "Otp sent to terminal"

.field private static final RESULT_VALIDITY:Ljava/lang/String; = "VALIDITY"

.field private static final RESULT_VERSION:Ljava/lang/String; = "version"

.field private static final RETRY_MAX_COUNT_OTP:I = 0xa

.field private static final SECONDS_TO_MILLISECONDS_CONVERSION_RATE:J = 0x3e8L

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final UTF8_STR:Ljava/lang/String; = "utf-8"

.field private static mHttpsReqUriBuilder:Landroid/net/Uri$Builder;


# instance fields
.field private mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

.field private mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

.field private mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

.field private final mCtx:Landroid/content/Context;

.field private mFirstProvAfterBoot:Z

.field private mPhoneId:I

.field private mProvisioningOperationHandler:Landroid/os/Handler;

.field private mRetryAfter511ErrorCount:I

.field private mRetryCount:I

.field private final mRetryIntent:Landroid/app/PendingIntent;

.field private mServiceId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWaitingForOTP:Z


# direct methods
.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->UTF8:Ljava/nio/charset/Charset;

    .line 99
    const/4 v0, -0x1

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_UNKNOWN:I

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_2G:I

    .line 101
    const/4 v0, 0x1

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_3G:I

    .line 102
    const/4 v0, 0x2

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_3GPLUS:I

    .line 103
    const/4 v0, 0x3

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_WIFI:I

    .line 104
    const/4 v0, 0x4

    sput v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_4G:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/spreadtrum/ims/acs/AcsController;Z)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    .line 122
    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 136
    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    .line 149
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    .line 150
    iput p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    .line 151
    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mServiceId:I

    .line 152
    iput-object p3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

    .line 153
    iput-boolean p4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    .line 154
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 155
    new-instance p2, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "com.spreadtrum.ims.acs.AcsController.ACTION_RETRY"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x4000000

    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    .line 156
    return-void
.end method

.method private allocateBgHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 182
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method

.method private buildProvisioningAddress()Ljava/lang/String;
    .locals 6

    .line 423
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v1}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    nop

    .line 425
    nop

    .line 427
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    goto :goto_1

    .line 429
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v3, v2

    .line 430
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMccMnc: invalid string"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    move v0, v2

    .line 432
    :goto_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "%03d"

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 433
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v5, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.rcs.mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pub.3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    return-object v0
.end method

.method private contactIdEquals(Lcom/spreadtrum/ims/acs/ContactId;Lcom/spreadtrum/ims/acs/ContactId;)Z
    .locals 0

    .line 404
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/acs/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getHttpsRequestArguments(Ljava/lang/String;Ljava/lang/String;Lcom/spreadtrum/ims/acs/ContactId;)Ljava/lang/String;
    .locals 7

    .line 225
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    .line 227
    nop

    .line 228
    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalVendor()Ljava/lang/String;

    move-result-object v3

    .line 227
    const-string v4, "terminal_vendor"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 229
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    .line 230
    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalModel()Ljava/lang/String;

    move-result-object v3

    .line 229
    const-string v4, "terminal_model"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    .line 232
    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 231
    const-string v4, "terminal_sw_version"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    const-string v3, "acs.preference"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 236
    sget-object v3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client_vendor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 238
    sget-object v3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 240
    sget-object v3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcs_profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 242
    sget-object v3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rcs_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mHttpsReqUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 247
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v4}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/telephony/ims/RcsConfig;->loadRcsConfigForSub(Landroid/content/Context;IZ)[B

    move-result-object v1

    .line 248
    new-instance v3, Landroid/telephony/ims/RcsConfig;

    invoke-direct {v3, v1}, Landroid/telephony/ims/RcsConfig;-><init>([B)V

    .line 249
    const-string v1, "vers"

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 251
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 255
    if-eqz p1, :cond_1

    .line 256
    const-string v1, "SMS_port"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 258
    :cond_1
    if-eqz p3, :cond_2

    .line 259
    invoke-virtual {p3}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "msisdn"

    invoke-virtual {v0, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getNetworkAccessType(Landroid/content/Context;)I

    move-result p1

    sget p3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_WIFI:I

    if-ne p1, p3, :cond_4

    .line 272
    if-nez p2, :cond_3

    move-object p2, v2

    :cond_3
    const-string p1, "token"

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 275
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNetworkSubType(I)I
    .locals 0

    .line 872
    packed-switch p1, :pswitch_data_0

    .line 886
    :pswitch_0
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_UNKNOWN:I

    return p1

    .line 884
    :pswitch_1
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_4G:I

    return p1

    .line 882
    :pswitch_2
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_3GPLUS:I

    return p1

    .line 878
    :pswitch_3
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_3G:I

    return p1

    .line 875
    :pswitch_4
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_2G:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryAfter(Ljava/net/HttpURLConnection;)J
    .locals 4

    .line 585
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 586
    if-nez p1, :cond_0

    .line 587
    const-wide/16 v0, 0x0

    return-wide v0

    .line 589
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 895
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AcsProvisioningManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method

.method private processProvisioningResult(Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;)V
    .locals 12

    .line 596
    iget v0, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    const-string v1, ""

    const-string v2, "acs.preference"

    const-string v3, "Provisioning forbidden: reset account"

    const-string v4, "token"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    if-ne v8, v0, :cond_7

    .line 598
    iput v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    .line 599
    iget-boolean v0, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-eqz v0, :cond_0

    .line 600
    const-string p1, "Waiting for SMS with OTP."

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 601
    return-void

    .line 603
    :cond_0
    const-string v0, "Provisioning request successful"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 605
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v0}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    .line 606
    iget-object p1, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 607
    invoke-virtual {v0, p1, v7}, Landroid/telephony/ims/ProvisioningManager;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 611
    :try_start_0
    iput-boolean v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    .line 612
    new-instance v0, Landroid/telephony/ims/RcsConfig;

    invoke-direct {v0, p1}, Landroid/telephony/ims/RcsConfig;-><init>([B)V

    .line 614
    const-string p1, "version"

    invoke-virtual {v0, p1, v7}, Landroid/telephony/ims/RcsConfig;->getInteger(Ljava/lang/String;I)I

    move-result p1

    .line 615
    const-string v8, "VALIDITY"

    invoke-virtual {v0, v8, v7}, Landroid/telephony/ims/RcsConfig;->getInteger(Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    .line 616
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Provisioning version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", validity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, v4, v1}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v4}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 623
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    iput v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 627
    sget-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->DISABLED_DORMANT:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->toInt()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 629
    const-string p1, "Provisioning: RCS client in dormant state"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 631
    cmp-long p1, v8, v5

    if-lez p1, :cond_5

    .line 632
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v8, v9}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    goto :goto_0

    .line 635
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->DISABLED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->toInt()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 637
    const-string p1, "Provisioning: disable RCS client"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_2
    sget-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->RESETED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->toInt()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 642
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_3
    sget-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->RESETED:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->toInt()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 645
    const-string p1, "Provisioning forbidden: no account"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_4
    cmp-long p1, v8, v5

    if-lez p1, :cond_5

    .line 650
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v8, v9}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_5
    :goto_0
    goto :goto_1

    .line 670
    :catch_0
    move-exception p1

    .line 671
    const-string p1, "Can\'t parse provisioning document"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 672
    iget-boolean p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    if-eqz p1, :cond_6

    .line 673
    const-string p1, "As this is first launch and we do not have a valid configuration yet, retry later"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 676
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retry()V

    .line 679
    :cond_6
    :goto_1
    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x1f7

    iget v8, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-ne v0, v8, :cond_8

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server Unavailable. Retry after: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    if-eqz v0, :cond_c

    .line 684
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 685
    iget-wide v0, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_c

    .line 686
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    iget-wide v2, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    invoke-static {v0, v1, v2, v3}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    goto/16 :goto_2

    .line 689
    :cond_8
    const/16 v0, 0x193

    iget v5, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-ne v0, v5, :cond_9

    .line 691
    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    goto :goto_2

    .line 695
    :cond_9
    const/16 v0, 0x1ff

    iget v3, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-ne v0, v3, :cond_b

    .line 697
    const-string p1, "Provisioning authentication required"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    .line 700
    invoke-static {v2}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 701
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v2}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 705
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retryAfter511Error()Z

    move-result p1

    if-nez p1, :cond_a

    .line 707
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 709
    :cond_a
    goto :goto_2

    .line 711
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 713
    iget-boolean p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    if-eqz p1, :cond_c

    .line 715
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->provisioningFails()V

    .line 716
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->retry()V

    .line 719
    :cond_c
    :goto_2
    return-void
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 163
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->tryToClose(Ljava/io/Closeable;)Ljava/io/IOException;

    .line 166
    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->tryToClose(Ljava/io/Closeable;)Ljava/io/IOException;

    .line 169
    throw v0
.end method

.method private retryAfter511Error()Z
    .locals 6

    .line 725
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 726
    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    .line 727
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    const-wide/16 v4, 0x1388

    invoke-static {v0, v3, v4, v5}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry after 511 error ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") provisioning after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 735
    return v2

    .line 737
    :cond_0
    const-string v0, "No more retry after 511 error for provisioning"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    .line 740
    return v0
.end method


# virtual methods
.method connectionEvent(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    :try_start_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 193
    nop

    .line 208
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 193
    return v0

    .line 196
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-nez p1, :cond_1

    .line 198
    nop

    .line 208
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 198
    return v0

    .line 200
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 201
    const-string p1, "Disconnection from network"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    nop

    .line 208
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 202
    return v0

    .line 204
    :cond_2
    :try_start_3
    const-string p1, "Connected to data network"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->updateConfig()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    const/4 p1, 0x1

    .line 208
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 206
    return p1

    .line 208
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 209
    throw p1
.end method

.method public executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    if-eqz p1, :cond_0

    const-string p1, "https"

    goto :goto_0

    :cond_0
    const-string p1, "http"

    .line 215
    :goto_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 217
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningUtils;->getUserLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Accept-Language"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object p1
.end method

.method public getConfig()Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V

    .line 443
    const-string v1, "Request config via HTTPS"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 444
    nop

    .line 446
    nop

    .line 449
    nop

    .line 450
    nop

    .line 453
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->buildProvisioningAddress()Ljava/lang/String;

    move-result-object v2

    .line 454
    nop

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HCS/RCS Uri to connect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 458
    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    .line 459
    invoke-static {v3}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 460
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 462
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    nop

    .line 466
    if-eqz v0, :cond_0

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line1Number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/spreadtrum/ims/acs/ContactUtil;->getValidPhoneNumberFromAndroid(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;

    move-result-object v0

    .line 469
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/spreadtrum/ims/acs/ContactUtil;->createContactIdFromValidatedData(Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_0
    move-object v0, v1

    .line 471
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->sendFirstRequestsToRequireOTP(Lcom/spreadtrum/ims/acs/ContactId;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    move-result-object v0

    .line 529
    nop

    .line 471
    return-object v0

    .line 474
    :cond_1
    const-string v3, "HTTP provisioning on mobile network"

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 476
    nop

    .line 477
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 479
    const/16 v5, 0xc8

    iget v6, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v5, v6, :cond_2

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 480
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    nop

    .line 483
    nop

    .line 484
    :try_start_2
    invoke-virtual {p0, v3, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    move-object v3, v1

    goto :goto_1

    .line 487
    :cond_2
    move-object v3, v2

    :goto_1
    iget v5, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    .line 497
    :sswitch_0
    invoke-virtual {p0, v1, v2, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->sendFirstRequestsToRequireOTP(Lcom/spreadtrum/ims/acs/ContactId;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    if-eqz v4, :cond_3

    .line 530
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 497
    :cond_3
    return-object v0

    .line 500
    :sswitch_1
    :try_start_4
    invoke-direct {p0, v4}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getRetryAfter(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    goto :goto_3

    .line 489
    :sswitch_2
    nop

    .line 507
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    nop

    .line 510
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1, v1, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getHttpsRequestArguments(Ljava/lang/String;Ljava/lang/String;Lcom/spreadtrum/ims/acs/ContactId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    const-string v3, "Request provisioning: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 513
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 515
    iget v2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    .line 521
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getRetryAfter(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    goto :goto_2

    .line 517
    :sswitch_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 518
    nop

    .line 529
    if-eqz v1, :cond_4

    .line 530
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 518
    :cond_4
    return-object v0

    .line 525
    :goto_2
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second HTTPS request failed with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 526
    nop

    .line 529
    if-eqz v1, :cond_5

    .line 530
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 526
    :cond_5
    return-object v0

    .line 504
    :goto_3
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First HTTPS request failed with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 505
    nop

    .line 529
    if-eqz v4, :cond_6

    .line 530
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 505
    :cond_6
    return-object v0

    .line 529
    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    .line 530
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 532
    :cond_7
    throw v0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x1ff -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc8 -> :sswitch_4
        0x1f7 -> :sswitch_3
    .end sparse-switch
.end method

.method public getNetworkAccessType(Landroid/content/Context;)I
    .locals 1

    .line 855
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 856
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 857
    if-nez p1, :cond_0

    .line 858
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_UNKNOWN:I

    return p1

    .line 860
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 861
    packed-switch v0, :pswitch_data_0

    .line 867
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_UNKNOWN:I

    return p1

    .line 863
    :pswitch_0
    sget p1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_WIFI:I

    return p1

    .line 865
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getNetworkSubType(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()V
    .locals 2

    .line 176
    const-string v0, "ProvisioningOps"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->allocateBgHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mProvisioningOperationHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    .line 178
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    .line 179
    return-void
.end method

.method public isFirstProvisioningAfterBoot()Z
    .locals 1

    .line 848
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mFirstProvAfterBoot:Z

    return v0
.end method

.method public provisioningFails()V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getNetworkAccessType(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->NETWORK_ACCESS_WIFI:I

    if-ne v0, v1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->registerWifiDisablingListener()V

    .line 752
    :cond_0
    return-void
.end method

.method quitProvisioningOperation()V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mProvisioningOperationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 840
    return-void
.end method

.method public registerNetworkStateListener()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->registerNetworkStateListener()V

    .line 795
    return-void
.end method

.method public resetCounters()V
    .locals 1

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 804
    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryAfter511ErrorCount:I

    .line 805
    return-void
.end method

.method retry()V
    .locals 5

    .line 758
    iget v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 759
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 760
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    const v1, 0x493e0

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    .line 762
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry provisioning count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 764
    goto :goto_0

    .line 765
    :cond_0
    const-string v0, "No more retry for provisioning"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void
.end method

.method public scheduleProvisioningOperation()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mProvisioningOperationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void
.end method

.method scheduleProvisioningOperation(Ljava/lang/Runnable;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mProvisioningOperationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    return-void
.end method

.method public sendFirstRequestsToRequireOTP(Lcom/spreadtrum/ims/acs/ContactId;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send 1rst HTTPS request to get OTP (msisdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(retry_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(waitingOTP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mWaitingForOTP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 288
    nop

    .line 291
    const-string v1, "No MSISDN set by end user: cannot authenticate!"

    const-string v2, "MSISDN set by end user="

    const-string v3, "line1Number = "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x193

    if-eqz p1, :cond_4

    :try_start_0
    iget v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    if-lez v7, :cond_4

    iget-boolean v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mWaitingForOTP:Z

    if-eqz v7, :cond_4

    .line 292
    iput-boolean v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mWaitingForOTP:Z

    .line 293
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v7}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    .line 294
    nop

    .line 295
    if-eqz p1, :cond_0

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 297
    iget-object v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->getValidPhoneNumberFromAndroid(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;

    move-result-object p1

    .line 298
    iget-object v7, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v7}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->createContactIdFromValidatedData(Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_0
    move-object p1, v5

    .line 301
    :goto_0
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v7, v8, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->displayPopupAndWaitResponse(Landroid/content/Context;Lcom/spreadtrum/ims/acs/ContactId;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object v7

    .line 302
    invoke-direct {p0, p1, v7}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->contactIdEquals(Lcom/spreadtrum/ims/acs/ContactId;Lcom/spreadtrum/ims/acs/ContactId;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v8}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v8, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v9, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v9}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v9

    invoke-virtual {v7}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, p1, v10}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    .line 306
    :cond_1
    if-nez v7, :cond_3

    .line 307
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 308
    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->UNKNOWN_MSISDN_CODE:I

    iput p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    nop

    .line 393
    nop

    .line 397
    iget-boolean p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p1, :cond_2

    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p1, :cond_2

    .line 398
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 309
    :cond_2
    return-object v0

    .line 311
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    move-object p1, v7

    .line 314
    :cond_4
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->generateSmsPortForProvisioning()Ljava/lang/String;

    move-result-object v7

    .line 319
    iget-object v8, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    const-string v9, "acs.preference"

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "token"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v9}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-direct {p0, v7, v4, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getHttpsRequestArguments(Ljava/lang/String;Ljava/lang/String;Lcom/spreadtrum/ims/acs/ContactId;)Ljava/lang/String;

    move-result-object v4

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v8}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 328
    const/16 v10, 0xc8

    iget v11, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v10, v11, :cond_5

    invoke-direct {p0, p3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    nop

    .line 333
    :try_start_3
    invoke-virtual {p0, v9, v4}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 334
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 336
    :cond_5
    iget v4, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 360
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request to get OTP failed: Forbidden. MSISDN="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 361
    iget p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    const/4 v4, 0x5

    if-ge p1, v4, :cond_d

    .line 362
    add-int/2addr p1, v9

    iput p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 363
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v4}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    nop

    .line 365
    if-eqz p1, :cond_6

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->getValidPhoneNumberFromAndroid(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;

    move-result-object p1

    .line 368
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/spreadtrum/ims/acs/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->createContactIdFromValidatedData(Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object v5

    .line 370
    :cond_6
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object p1

    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    .line 371
    invoke-virtual {p1, v3, v5}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->displayPopupAndWaitResponse(Landroid/content/Context;Lcom/spreadtrum/ims/acs/ContactId;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object p1

    .line 372
    invoke-direct {p0, v5, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->contactIdEquals(Lcom/spreadtrum/ims/acs/ContactId;Lcom/spreadtrum/ims/acs/ContactId;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 373
    iget-object v3, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v4}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    iget-object v4, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mPhoneId:I

    invoke-static {v5}, Lcom/spreadtrum/ims/acs/AcsUtils;->getSubIdByPhoneId(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v7}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    .line 376
    :cond_7
    if-nez p1, :cond_a

    .line 377
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 378
    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->UNKNOWN_MSISDN_CODE:I

    iput p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    nop

    .line 393
    if-eqz v8, :cond_8

    .line 394
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_8
    iget-boolean p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p1, :cond_9

    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p1, :cond_9

    .line 398
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 379
    :cond_9
    return-object v0

    .line 381
    :cond_a
    :try_start_5
    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, p1, p2, p3}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->sendFirstRequestsToRequireOTP(Lcom/spreadtrum/ims/acs/ContactId;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    if-eqz v8, :cond_b

    .line 394
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_b
    iget-boolean p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p2, :cond_c

    iget p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p2, :cond_c

    .line 398
    iget-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 382
    :cond_c
    return-object p1

    .line 385
    :cond_d
    :sswitch_1
    :try_start_6
    invoke-direct {p0, v8}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getRetryAfter(Ljava/net/HttpURLConnection;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    goto :goto_1

    .line 338
    :sswitch_2
    const-string p1, "HTTPS request returns with 200 OK"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;

    .line 344
    iget-object p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;

    const-string p3, "Otp sent to terminal"

    .line 345
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 346
    :cond_e
    iget p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    const/16 p3, 0xa

    if-ge p1, p3, :cond_f

    .line 347
    add-int/2addr p1, v9

    iput p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryCount:I

    .line 348
    iput-boolean v9, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mWaitingForOTP:Z

    .line 349
    iput-boolean v9, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    .line 351
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p1, v7, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->registerSmsProvisioningReceiver(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    const-wide/32 v1, 0x1d4c0

    invoke-static {p1, p2, v1, v2}, Lcom/spreadtrum/ims/acs/AcsController;->startRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    :cond_f
    nop

    .line 393
    if-eqz v8, :cond_10

    .line 394
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_10
    iget-boolean p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p1, :cond_11

    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p1, :cond_11

    .line 398
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 357
    :cond_11
    return-object v0

    .line 389
    :goto_1
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request to get OTP failed: code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 390
    nop

    .line 393
    if-eqz v8, :cond_12

    .line 394
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_12
    iget-boolean p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p1, :cond_13

    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p1, :cond_13

    .line 398
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 390
    :cond_13
    return-object v0

    .line 393
    :catchall_0
    move-exception p1

    move-object v5, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v5, :cond_14

    .line 394
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :cond_14
    iget-boolean p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    if-nez p2, :cond_15

    iget p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    if-eq v6, p2, :cond_15

    .line 398
    iget-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 400
    :cond_15
    throw p1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x193 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method

.method sendSecondHttpsRequestWithOTP(Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V

    .line 552
    const-string v1, "Send second HTTPS with OTP"

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 553
    nop

    .line 556
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "?OTP="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 557
    const-string p2, "Request provisioning with OTP: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 559
    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->executeHttpRequest(ZLjava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 560
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 561
    iget p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 567
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getRetryAfter(Ljava/net/HttpURLConnection;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    goto :goto_0

    .line 563
    :sswitch_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    nop

    .line 575
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 564
    :cond_0
    return-object v0

    .line 571
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request with OTP failed code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    nop

    .line 575
    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 572
    :cond_1
    return-object v0

    .line 575
    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    .line 576
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 578
    :cond_2
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method tryToClose(Ljava/io/Closeable;)Ljava/io/IOException;
    .locals 2

    .line 899
    if-eqz p1, :cond_0

    .line 901
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    goto :goto_0

    .line 902
    :catch_0
    move-exception p1

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to close the stream, Message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->log(Ljava/lang/String;)V

    .line 905
    return-object p1

    .line 908
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public unregisterNetworkStateListener()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterNetworkStateListener()V

    .line 781
    return-void
.end method

.method public unregisterSmsProvisioningReceiver()V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningSMS:Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 774
    return-void
.end method

.method public unregisterWifiDisablingListener()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsProvisioningConn:Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->unregisterWifiDisablingListener()V

    .line 788
    return-void
.end method

.method public updateConfig()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/acs/AcsController;->cancelRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 542
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->getConfig()Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    move-result-object v0

    .line 544
    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->processProvisioningResult(Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;)V

    .line 545
    return-void
.end method

.method updateConfigWithOTP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mAcsController:Lcom/spreadtrum/ims/acs/AcsController;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->mRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/spreadtrum/ims/acs/AcsController;->cancelRetryAlarm(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->sendSecondHttpsRequestWithOTP(Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;

    move-result-object p1

    .line 416
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningManager;->processProvisioningResult(Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;)V

    .line 417
    return-void
.end method
