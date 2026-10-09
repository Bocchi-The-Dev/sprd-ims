.class public abstract Lcom/android/libraries/entitlement/CarrierConfig$Builder;
.super Ljava/lang/Object;
.source "CarrierConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/CarrierConfig;
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
.method public abstract build()Lcom/android/libraries/entitlement/CarrierConfig;
.end method

.method public abstract setServerUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/CarrierConfig$Builder;
.end method

.method public abstract setTimeoutInSec(I)Lcom/android/libraries/entitlement/CarrierConfig$Builder;
.end method
