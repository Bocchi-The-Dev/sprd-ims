.class public abstract Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.super Ljava/lang/Object;
.source "ServiceEntitlementRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/ServiceEntitlementRequest;
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
.method public abstract build()Lcom/android/libraries/entitlement/ServiceEntitlementRequest;
.end method

.method public abstract setAcceptContentType(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setAppName(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setAppVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setAuthenticationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setConfigurationVersion(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setEntitlementVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setNotificationAction(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setNotificationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setTerminalId(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setTerminalModel(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setTerminalSoftwareVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method

.method public abstract setTerminalVendor(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.end method
