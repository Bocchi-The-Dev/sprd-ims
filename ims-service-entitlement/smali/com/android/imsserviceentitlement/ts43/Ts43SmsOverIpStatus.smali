.class public abstract Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;
.super Ljava/lang/Object;
.source "Ts43SmsOverIpStatus.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$BpuQcPVg0vmyfWTNFYm6SWCF-mg(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->lambda$builder$0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;
    .locals 2

    .line 46
    new-instance v0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus$Builder;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus$Builder;-><init>()V

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;
    .locals 4

    .line 51
    invoke-static {}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->builder()Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object v0

    const-string v1, "APPLICATION"

    const-string v2, "EntitlementStatus"

    const-string v3, "ap2005"

    .line 53
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$$ExternalSyntheticLambda0;-><init>()V

    .line 56
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x2

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$builder$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract entitlementStatus()I
.end method

.method public isActive()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->entitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ts43SmsOverIpStatus {entitlementStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->entitlementStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
