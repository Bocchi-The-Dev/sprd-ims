.class public final synthetic Lcom/android/imsserviceentitlement/EntitlementUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/imsserviceentitlement/ImsEntitlementApi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/imsserviceentitlement/EntitlementUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/imsserviceentitlement/EntitlementUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    invoke-static {p0}, Lcom/android/imsserviceentitlement/EntitlementUtils;->$r8$lambda$YL38HwLQKujE07xZAmrQHoWpLuQ(Lcom/android/imsserviceentitlement/ImsEntitlementApi;)Lcom/android/imsserviceentitlement/entitlement/EntitlementResult;

    move-result-object p0

    return-object p0
.end method
