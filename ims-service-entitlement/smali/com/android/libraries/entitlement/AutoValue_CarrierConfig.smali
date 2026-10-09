.class final Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;
.super Lcom/android/libraries/entitlement/CarrierConfig;
.source "AutoValue_CarrierConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;
    }
.end annotation


# instance fields
.field private final network:Landroid/net/Network;

.field private final serverUrl:Ljava/lang/String;

.field private final timeoutInSec:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroid/net/Network;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/libraries/entitlement/CarrierConfig;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->serverUrl:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->timeoutInSec:I

    .line 22
    iput-object p3, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->network:Landroid/net/Network;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/net/Network;Lcom/android/libraries/entitlement/AutoValue_CarrierConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;-><init>(Ljava/lang/String;ILandroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/android/libraries/entitlement/CarrierConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 56
    check-cast p1, Lcom/android/libraries/entitlement/CarrierConfig;

    .line 57
    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/CarrierConfig;->serverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->timeoutInSec:I

    .line 58
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/CarrierConfig;->timeoutInSec()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->network:Landroid/net/Network;

    if-nez p0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/CarrierConfig;->network()Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/CarrierConfig;->network()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 70
    iget v2, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->timeoutInSec:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->network:Landroid/net/Network;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public network()Landroid/net/Network;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->network:Landroid/net/Network;

    return-object p0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public timeoutInSec()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->timeoutInSec:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierConfig{serverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutInSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->timeoutInSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;->network:Landroid/net/Network;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
