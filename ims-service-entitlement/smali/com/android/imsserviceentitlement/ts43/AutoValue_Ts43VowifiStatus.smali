.class final Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;
.super Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;
.source "AutoValue_Ts43VowifiStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;
    }
.end annotation


# instance fields
.field private final addrStatus:I

.field private final entitlementStatus:I

.field private final provStatus:I

.field private final tcStatus:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->entitlementStatus:I

    .line 22
    iput p2, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->tcStatus:I

    .line 23
    iput p3, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->addrStatus:I

    .line 24
    iput p4, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->provStatus:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public addrStatus()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->addrStatus:I

    return p0
.end method

.method public entitlementStatus()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->entitlementStatus:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;

    .line 54
    iget v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->entitlementStatus:I

    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->entitlementStatus()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->tcStatus:I

    .line 55
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->tcStatus()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->addrStatus:I

    .line 56
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->addrStatus()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->provStatus:I

    .line 57
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;->provStatus()I

    move-result p1

    if-ne p0, p1, :cond_1

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

    .line 66
    iget v0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->entitlementStatus:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 68
    iget v2, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->tcStatus:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 70
    iget v2, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->addrStatus:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->provStatus:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public provStatus()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->provStatus:I

    return p0
.end method

.method public tcStatus()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;->tcStatus:I

    return p0
.end method
