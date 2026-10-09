.class public Lcom/android/imsserviceentitlement/ImsEntitlementApi;
.super Ljava/lang/Object;
.source "ImsEntitlementApi.java"


# static fields
.field static sClock:Ljava/time/Clock;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

.field private mNeedsImsProvisioning:Z

.field private mRetryFullAuthenticationCount:I

.field private final mServiceEntitlement:Lcom/android/libraries/entitlement/ServiceEntitlement;

.field private final mSubId:I


# direct methods
.method public static synthetic $r8$lambda$Y-tkvwUPKNCFgOuDtdapgGeDv54(Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->lambda$checkEntitlementStatus$0(Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLhvHGf_6KL5SQ2x_WFtyxRFAQ0(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->lambda$toEntitlementResult$1(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsBx_ayCcrtzjEhbLsBrMtaqm_Y(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->lambda$toEntitlementResult$2(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->sClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I

    .line 74
    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mContext:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    .line 76
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->getCarrierConfig(Landroid/content/Context;)Lcom/android/libraries/entitlement/CarrierConfig;

    move-result-object v0

    .line 77
    invoke-static {p1, p2}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->isImsProvisioningRequired(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mNeedsImsProvisioning:Z

    .line 78
    new-instance v1, Lcom/android/libraries/entitlement/ServiceEntitlement;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/libraries/entitlement/ServiceEntitlement;-><init>(Landroid/content/Context;Lcom/android/libraries/entitlement/CarrierConfig;I)V

    iput-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mServiceEntitlement:Lcom/android/libraries/entitlement/ServiceEntitlement;

    .line 79
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZLcom/android/libraries/entitlement/ServiceEntitlement;Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I

    .line 89
    iput-object p1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    .line 91
    iput-boolean p3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mNeedsImsProvisioning:Z

    .line 92
    iput-object p4, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mServiceEntitlement:Lcom/android/libraries/entitlement/ServiceEntitlement;

    .line 93
    iput-object p5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    return-void
.end method

.method private getCarrierConfig(Landroid/content/Context;)Lcom/android/libraries/entitlement/CarrierConfig;
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    invoke-static {p1, p0}, Lcom/android/imsserviceentitlement/utils/TelephonyUtils;->getEntitlementServerUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-static {}, Lcom/android/libraries/entitlement/CarrierConfig;->builder()Lcom/android/libraries/entitlement/CarrierConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/libraries/entitlement/CarrierConfig$Builder;->setServerUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/CarrierConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/libraries/entitlement/CarrierConfig$Builder;->build()Lcom/android/libraries/entitlement/CarrierConfig;

    move-result-object p0

    return-object p0
.end method

.method private isResetToDefault(Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;)Z
    .locals 0

    .line 214
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->UNKNOWN_BEHAVIOR:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS_UNTIL_SETTING_ON:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$checkEntitlementStatus$0(Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAuthenticationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    return-void
.end method

.method private static synthetic lambda$toEntitlementResult$1(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setEmergencyAddressWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    return-void
.end method

.method private static synthetic lambda$toEntitlementResult$2(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setEmergencyAddressWebData(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    return-void
.end method

.method private parseDelaySecondsByRetryAfter(Ljava/lang/String;)J
    .locals 3

    .line 169
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 174
    :catch_0
    :try_start_1
    sget-object p0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->sClock:Ljava/time/Clock;

    .line 175
    invoke-static {v0}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/Temporal;

    .line 174
    invoke-virtual {p0, v0, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    .line 179
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse retry-after: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignore it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IMSSE-ImsEntitlementApi"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private toEntitlementResult(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 4

    .line 184
    invoke-static {}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->builder()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->entitlementValidation()Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    move-result-object v1

    .line 187
    iget-boolean v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mNeedsImsProvisioning:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->isResetToDefault(Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    sget-object p1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-eq v1, p1, :cond_1

    sget-object p1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->UNKNOWN_BEHAVIOR:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->resetConfigsExceptVers()V

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->reset()V

    goto :goto_1

    .line 196
    :cond_2
    invoke-static {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->builder(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setVowifiStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object p0

    .line 197
    invoke-static {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;->builder(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setVolteStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object p0

    .line 198
    invoke-static {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->builder(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setSmsoveripStatus(Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    const-string p0, "APPLICATION"

    const-string v1, "ServiceFlow_URL"

    const-string v2, "ap2004"

    .line 199
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda1;-><init>(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;)V

    .line 203
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "ServiceFlow_UserData"

    .line 204
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda2;-><init>(Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;)V

    .line 208
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 210
    :goto_1
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->build()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkEntitlementStatus()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 8

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkEntitlementStatus subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-ImsEntitlementApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->builder()Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getToken()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi$$ExternalSyntheticLambda0;-><init>(Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 107
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/imsserviceentitlement/fcm/FcmUtils;->fetchFcmToken(Landroid/content/Context;I)V

    .line 108
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/imsserviceentitlement/fcm/FcmTokenStore;->getToken(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setNotificationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    const-string v2, "vendorX"

    .line 110
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalVendor(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    const-string v2, "modelY"

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalModel(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    const-string v2, "versionZ"

    .line 112
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalSoftwareVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    const-string v2, "text/vnd.wap.connectivity-xml"

    .line 113
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAcceptContentType(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    .line 114
    iget-boolean v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mNeedsImsProvisioning:Z

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    .line 116
    invoke-virtual {v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setConfigurationVersion(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->build()Lcom/android/libraries/entitlement/ServiceEntitlementRequest;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mServiceEntitlement:Lcom/android/libraries/entitlement/ServiceEntitlement;

    .line 124
    iget-boolean v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mNeedsImsProvisioning:Z
    :try_end_0
    .catch Lcom/android/libraries/entitlement/ServiceEntitlementException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "ap2004"

    if-eqz v5, :cond_1

    :try_start_1
    const-string v5, "ap2003"

    const-string v7, "ap2005"

    .line 125
    invoke-static {v6, v5, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 123
    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/android/libraries/entitlement/ServiceEntitlement;->queryEntitlementStatus(Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v4, Lcom/android/imsserviceentitlement/utils/XmlDoc;

    invoke-direct {v4, v0}, Lcom/android/imsserviceentitlement/utils/XmlDoc;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/libraries/entitlement/ServiceEntitlementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :try_start_2
    iget-object v5, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {v5, v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->update(Ljava/lang/String;)V

    .line 134
    iput v2, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I
    :try_end_2
    .catch Lcom/android/libraries/entitlement/ServiceEntitlementException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v3

    .line 136
    :goto_1
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getHttpStatus()I

    move-result v5

    const/16 v6, 0x1ff

    if-ne v5, v6, :cond_3

    .line 138
    iget v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I

    if-gtz v0, :cond_2

    const-string p0, "Ran out of the retry count, stop query status."

    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string v0, "Server asking for full authentication, retry the query."

    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mLastEntitlementConfiguration:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->reset()V

    .line 145
    iget v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->mRetryFullAuthenticationCount:I

    .line 146
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->checkEntitlementStatus()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0

    .line 147
    :cond_3
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getHttpStatus()I

    move-result v2

    const/16 v5, 0x1f7

    if-ne v2, v5, :cond_4

    .line 148
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getRetryAfter()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server asking for retry. retryAfter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getRetryAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->builder()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;->getRetryAfter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->parseDelaySecondsByRetryAfter(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setRetryAfterSeconds(J)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->build()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v2, "queryEntitlementStatus failed"

    .line 158
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    .line 160
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;->toEntitlementResult(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object v3

    :goto_3
    return-object v3
.end method
