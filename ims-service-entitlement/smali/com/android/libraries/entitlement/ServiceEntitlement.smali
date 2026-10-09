.class public Lcom/android/libraries/entitlement/ServiceEntitlement;
.super Ljava/lang/Object;
.source "ServiceEntitlement.java"


# instance fields
.field private final carrierConfig:Lcom/android/libraries/entitlement/CarrierConfig;

.field private final eapAkaApi:Lcom/android/libraries/entitlement/eapaka/EapAkaApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/libraries/entitlement/CarrierConfig;I)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->carrierConfig:Lcom/android/libraries/entitlement/CarrierConfig;

    .line 71
    new-instance p2, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;

    invoke-direct {p2, p1, p3}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->eapAkaApi:Lcom/android/libraries/entitlement/eapaka/EapAkaApi;

    return-void
.end method

.method constructor <init>(Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/eapaka/EapAkaApi;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->carrierConfig:Lcom/android/libraries/entitlement/CarrierConfig;

    .line 77
    iput-object p2, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->eapAkaApi:Lcom/android/libraries/entitlement/eapaka/EapAkaApi;

    return-void
.end method


# virtual methods
.method public queryEntitlementStatus(Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/libraries/entitlement/ServiceEntitlementRequest;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->eapAkaApi:Lcom/android/libraries/entitlement/eapaka/EapAkaApi;

    iget-object p0, p0, Lcom/android/libraries/entitlement/ServiceEntitlement;->carrierConfig:Lcom/android/libraries/entitlement/CarrierConfig;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->queryEntitlementStatus(Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
