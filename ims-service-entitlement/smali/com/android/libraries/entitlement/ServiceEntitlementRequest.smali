.class public abstract Lcom/android/libraries/entitlement/ServiceEntitlementRequest;
.super Ljava/lang/Object;
.source "ServiceEntitlementRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 3

    .line 124
    new-instance v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->setConfigurationVersion(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    const-string v1, "2.0"

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setEntitlementVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    const-string v1, ""

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAuthenticationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalId(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalVendor(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalModel(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setTerminalSoftwareVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAppName(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAppVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setNotificationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setNotificationAction(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json, text/vnd.wap.connectivity-xml"

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;->setAcceptContentType(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract acceptContentType()Ljava/lang/String;
.end method

.method public abstract appName()Ljava/lang/String;
.end method

.method public abstract appVersion()Ljava/lang/String;
.end method

.method public abstract authenticationToken()Ljava/lang/String;
.end method

.method public abstract configurationVersion()I
.end method

.method public abstract entitlementVersion()Ljava/lang/String;
.end method

.method public abstract notificationAction()I
.end method

.method public abstract notificationToken()Ljava/lang/String;
.end method

.method public abstract terminalId()Ljava/lang/String;
.end method

.method public abstract terminalModel()Ljava/lang/String;
.end method

.method public abstract terminalSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract terminalVendor()Ljava/lang/String;
.end method
