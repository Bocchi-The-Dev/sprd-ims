.class public abstract Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;
.super Ljava/lang/Object;
.source "Ts43VowifiStatus.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$OQ0pgob-3KIP_L9EPOeL0SzR4-E(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->lambda$builder$3(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tz9ox2bqTab1N0GgoHdeRBP1uy4(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->lambda$builder$0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ug1PEVgh-xwKj9D-R3fhMclMnJ0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->lambda$builder$2(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oA5fUx8R02XHeJTXRpG_5vlG0Pc(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->lambda$builder$1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;-><init>()V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setTcStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setAddrStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setProvStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lcom/android/imsserviceentitlement/utils/XmlDoc;)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 6

    .line 90
    invoke-static {}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->builder()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const-string v1, "APPLICATION"

    const-string v2, "EntitlementStatus"

    const-string v3, "ap2004"

    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda0;-><init>()V

    .line 95
    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v4, 0x2

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const-string v2, "TC_Status"

    .line 98
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda1;-><init>()V

    .line 101
    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setTcStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const-string v2, "AddrStatus"

    .line 104
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda2;-><init>()V

    .line 107
    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setAddrStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object v0

    const-string v2, "ProvStatus"

    .line 110
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$$ExternalSyntheticLambda3;-><init>()V

    .line 113
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;->setProvStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$builder$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$builder$1(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$builder$2(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$builder$3(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addrStatus()I
.end method

.method public abstract entitlementStatus()I
.end method

.method public inProgress()Z
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result p0

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public incompatible()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract provStatus()I
.end method

.method public serverDataMissing()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract tcStatus()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ts43VowifiStatus {entitlementStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tcStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",addrStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",provStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public vowifiEntitled()Z
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
