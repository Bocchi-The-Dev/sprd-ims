.class final Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus$Builder;
.super Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;
.source "AutoValue_Ts43VolteStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private entitlementStatus:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus;
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus$Builder;->entitlementStatus:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 55
    new-instance v0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus;-><init>(ILcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus-IA;)V

    return-object v0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entitlementStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VolteStatus$Builder;
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VolteStatus$Builder;->entitlementStatus:Ljava/lang/Integer;

    return-object p0
.end method
