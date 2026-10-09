.class final Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;
.super Lcom/android/libraries/entitlement/ServiceEntitlementRequest;
.source "AutoValue_ServiceEntitlementRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;
    }
.end annotation


# instance fields
.field private final acceptContentType:Ljava/lang/String;

.field private final appName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final authenticationToken:Ljava/lang/String;

.field private final configurationVersion:I

.field private final entitlementVersion:Ljava/lang/String;

.field private final notificationAction:I

.field private final notificationToken:Ljava/lang/String;

.field private final terminalId:Ljava/lang/String;

.field private final terminalModel:Ljava/lang/String;

.field private final terminalSoftwareVersion:Ljava/lang/String;

.field private final terminalVendor:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->configurationVersion:I

    .line 46
    iput-object p2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->entitlementVersion:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->authenticationToken:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalId:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalVendor:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalModel:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalSoftwareVersion:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appName:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appVersion:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationToken:Ljava/lang/String;

    .line 55
    iput p11, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationAction:I

    .line 56
    iput-object p12, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->acceptContentType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptContentType()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->acceptContentType:Ljava/lang/String;

    return-object p0
.end method

.method public appName()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public appVersion()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public authenticationToken()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->authenticationToken:Ljava/lang/String;

    return-object p0
.end method

.method public configurationVersion()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->configurationVersion:I

    return p0
.end method

.method public entitlementVersion()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->entitlementVersion:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 143
    check-cast p1, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;

    .line 144
    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->configurationVersion:I

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->configurationVersion()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->entitlementVersion:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->entitlementVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->authenticationToken:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->authenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalId:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalVendor:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalModel:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalSoftwareVersion:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->appName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appVersion:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->appVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationToken:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->notificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationAction:I

    .line 154
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->notificationAction()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->acceptContentType:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->acceptContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 164
    iget v0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->configurationVersion:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 166
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->entitlementVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 168
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 170
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 172
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalVendor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 174
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 176
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 178
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 180
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 182
    iget-object v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 184
    iget v2, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationAction:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 186
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->acceptContentType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public notificationAction()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationAction:I

    return p0
.end method

.method public notificationToken()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationToken:Ljava/lang/String;

    return-object p0
.end method

.method public terminalId()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalId:Ljava/lang/String;

    return-object p0
.end method

.method public terminalModel()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalModel:Ljava/lang/String;

    return-object p0
.end method

.method public terminalSoftwareVersion()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalSoftwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method public terminalVendor()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalVendor:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceEntitlementRequest{configurationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->configurationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entitlementVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->entitlementVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authenticationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", terminalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", terminalVendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", terminalModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", terminalSoftwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->terminalSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->notificationAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acceptContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;->acceptContentType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
