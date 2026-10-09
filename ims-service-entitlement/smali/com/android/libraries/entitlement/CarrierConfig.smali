.class public abstract Lcom/android/libraries/entitlement/CarrierConfig;
.super Ljava/lang/Object;
.source "CarrierConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/CarrierConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/libraries/entitlement/CarrierConfig$Builder;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;-><init>()V

    const-string v1, ""

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->setServerUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/CarrierConfig$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/CarrierConfig$Builder;->setTimeoutInSec(I)Lcom/android/libraries/entitlement/CarrierConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract network()Landroid/net/Network;
.end method

.method public abstract serverUrl()Ljava/lang/String;
.end method

.method public abstract timeoutInSec()I
.end method
