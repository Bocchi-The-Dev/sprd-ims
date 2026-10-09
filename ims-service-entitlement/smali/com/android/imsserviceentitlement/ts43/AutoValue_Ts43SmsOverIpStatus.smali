.class final Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;
.super Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;
.source "AutoValue_Ts43SmsOverIpStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus$Builder;
    }
.end annotation


# instance fields
.field private final entitlementStatus:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;->entitlementStatus:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entitlementStatus()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;->entitlementStatus:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 25
    :cond_0
    instance-of v1, p1, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 26
    check-cast p1, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;

    .line 27
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;->entitlementStatus:I

    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;->entitlementStatus()I

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
    .locals 1

    .line 36
    iget p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43SmsOverIpStatus;->entitlementStatus:I

    const v0, 0xf4243

    xor-int/2addr p0, v0

    return p0
.end method
