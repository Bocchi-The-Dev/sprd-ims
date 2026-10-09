.class final Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;
.super Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.source "AutoValue_EntitlementResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private emergencyAddressWebData:Ljava/lang/String;

.field private emergencyAddressWebUrl:Ljava/lang/String;

.field private retryAfterSeconds:Ljava/lang/Long;

.field private smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

.field private termsAndConditionsWebUrl:Ljava/lang/String;

.field private volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

.field private vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
    .locals 11

    .line 180
    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebData:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->termsAndConditionsWebUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->retryAfterSeconds:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;

    iget-object v2, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    iget-object v3, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    iget-object v4, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    iget-object v5, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebData:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->termsAndConditionsWebUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->retryAfterSeconds:Ljava/lang/Long;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult;-><init>(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult-IA;)V

    return-object v0

    .line 187
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    if-nez v1, :cond_2

    const-string v1, " vowifiStatus"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    if-nez v1, :cond_3

    const-string v1, " volteStatus"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    if-nez v1, :cond_4

    const-string v1, " smsoveripStatus"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebUrl:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " emergencyAddressWebUrl"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebData:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " emergencyAddressWebData"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->termsAndConditionsWebUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, " termsAndConditionsWebUrl"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_7
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->retryAfterSeconds:Ljava/lang/Long;

    if-nez p0, :cond_8

    const-string p0, " retryAfterSeconds"

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEmergencyAddressWebData(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 162
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebData:Ljava/lang/String;

    return-object p0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null emergencyAddressWebData"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEmergencyAddressWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->emergencyAddressWebUrl:Ljava/lang/String;

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null emergencyAddressWebUrl"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRetryAfterSeconds(J)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    .line 175
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->retryAfterSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public setSmsoveripStatus(Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->smsoveripStatus:Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    return-object p0

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null smsoveripStatus"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTermsAndConditionsWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->termsAndConditionsWebUrl:Ljava/lang/String;

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null termsAndConditionsWebUrl"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVolteStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->volteStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null volteStatus"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVowifiStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/AutoValue_EntitlementResult$Builder;->vowifiStatus:Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    return-object p0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null vowifiStatus"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
