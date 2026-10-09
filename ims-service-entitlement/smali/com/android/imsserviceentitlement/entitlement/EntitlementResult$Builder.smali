.class public abstract Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.super Ljava/lang/Object;
.source "EntitlementResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;
.end method

.method public abstract setEmergencyAddressWebData(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setEmergencyAddressWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setRetryAfterSeconds(J)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setSmsoveripStatus(Lcom/android/imsserviceentitlement/ts43/Ts43SmsOverIpStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setTermsAndConditionsWebUrl(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setVolteStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method

.method public abstract setVowifiStatus(Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult$Builder;
.end method
