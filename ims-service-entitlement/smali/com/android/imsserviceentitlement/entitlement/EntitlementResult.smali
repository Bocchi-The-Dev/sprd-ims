.class public abstract Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
.super Ljava/lang/Object;
.source "EntitlementResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    }
.end annotation


# static fields
.field private static final INACTIVE_SMSOVERIP_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

.field private static final INACTIVE_VOLTE_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

.field private static final INACTIVE_VOWIFI_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->builder()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setTcStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setAddrStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setProvStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v0

    sput-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_VOWIFI_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    .line 37
    invoke-static {}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;->builder()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    move-result-object v0

    sput-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_VOLTE_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    .line 42
    invoke-static {}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->builder()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;->build()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    move-result-object v0

    sput-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_SMSOVERIP_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 3

    .line 48
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;-><init>()V

    sget-object v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_VOWIFI_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->setVowifiStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_VOLTE_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setVolteStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->INACTIVE_SMSOVERIP_STATUS:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setSmsoveripStatus(Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    const-string v1, ""

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setEmergencyAddressWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setEmergencyAddressWebData(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setTermsAndConditionsWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;->setRetryAfterSeconds(J)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static opaque(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string_of_length_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getEmergencyAddressWebData()Ljava/lang/String;
.end method

.method public abstract getEmergencyAddressWebUrl()Ljava/lang/String;
.end method

.method public abstract getRetryAfterSeconds()J
.end method

.method public abstract getSmsoveripStatus()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;
.end method

.method public abstract getTermsAndConditionsWebUrl()Ljava/lang/String;
.end method

.method public abstract getVolteStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;
.end method

.method public abstract getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EntitlementResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ",getVowifiStatus="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",getVolteStatus="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVolteStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",getSmsoveripStatus="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getSmsoveripStatus()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",getEmergencyAddressWebUrl="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->opaque(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getEmergencyAddressWebData="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->opaque(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getTermsAndConditionsWebUrl="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getTermsAndConditionsWebUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getRetryAfter="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getRetryAfterSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
