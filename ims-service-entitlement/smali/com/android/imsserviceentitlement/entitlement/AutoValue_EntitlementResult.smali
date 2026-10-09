.class final Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;
.super Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
.source "AutoValue_EntitlementResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;
    }
.end annotation


# instance fields
.field private final emergencyAddressWebData:Ljava/lang/String;

.field private final emergencyAddressWebUrl:Ljava/lang/String;

.field private final retryAfterSeconds:J

.field private final smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

.field private final termsAndConditionsWebUrl:Ljava/lang/String;

.field private final volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

.field private final vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;


# direct methods
.method private constructor <init>(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    .line 34
    iput-object p2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    .line 35
    iput-object p3, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    .line 36
    iput-object p4, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebUrl:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebData:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->termsAndConditionsWebUrl:Ljava/lang/String;

    .line 39
    iput-wide p7, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->retryAfterSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;-><init>(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    check-cast p1, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    .line 84
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    .line 85
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getVolteStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    .line 86
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getSmsoveripStatus()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebUrl:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebData:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getEmergencyAddressWebData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->termsAndConditionsWebUrl:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getTermsAndConditionsWebUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->retryAfterSeconds:J

    .line 90
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;->getRetryAfterSeconds()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getEmergencyAddressWebData()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebData:Ljava/lang/String;

    return-object p0
.end method

.method public getEmergencyAddressWebUrl()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryAfterSeconds()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->retryAfterSeconds:J

    return-wide v0
.end method

.method public getSmsoveripStatus()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    return-object p0
.end method

.method public getTermsAndConditionsWebUrl()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->termsAndConditionsWebUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVolteStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    return-object p0
.end method

.method public getVowifiStatus()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 101
    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 103
    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 105
    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 107
    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->emergencyAddressWebData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 109
    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->termsAndConditionsWebUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 111
    iget-wide v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;->retryAfterSeconds:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method
