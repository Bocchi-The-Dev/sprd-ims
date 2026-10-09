.class public Lcom/spreadtrum/ims/acs/AcsProvisioningUtils;
.super Ljava/lang/Object;
.source "AcsProvisioningUtils.java"


# static fields
.field static final ACTION_BINARY_SMS_RECEIVED:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field static final INPUT_MSISDN_TIMEOUT:I = 0xea60

.field static final RESET_CONFIG_SUFFIX:Ljava/lang/String; = "-rcscfg"

.field static final RETRY_AFTER_511_ERROR_MAX_COUNT:I = 0x5

.field static final RETRY_AFTER_511_ERROR_TIMEOUT:I = 0x1388

.field static final RETRY_BASE_TIMEOUT:I = 0x493e0

.field static final RETRY_MAX_COUNT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnrichCallingProfile()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "enriched_call"

    return-object v0
.end method

.method static getRcsProfile()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "joyn_blackbird"

    return-object v0
.end method

.method static getRcsVersion()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "5.1B"

    return-object v0
.end method

.method static getUserLanguage()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
