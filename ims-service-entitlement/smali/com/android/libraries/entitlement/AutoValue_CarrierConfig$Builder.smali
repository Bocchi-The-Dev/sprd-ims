.class final Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;
.super Lcom/android/libraries/entitlement/CarrierConfig$Builder;
.source "AutoValue_CarrierConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private network:Landroid/net/Network;

.field private serverUrl:Ljava/lang/String;

.field private timeoutInSec:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/libraries/entitlement/CarrierConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/libraries/entitlement/CarrierConfig;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->serverUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->timeoutInSec:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v2, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->network:Landroid/net/Network;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig;-><init>(Ljava/lang/String;ILandroid/net/Network;Lcom/android/libraries/entitlement/AutoValue_CarrierConfig-IA;)V

    return-object v2

    .line 104
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->serverUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " serverUrl"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->timeoutInSec:Ljava/lang/Integer;

    if-nez p0, :cond_3

    const-string p0, " timeoutInSec"

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/CarrierConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->serverUrl:Ljava/lang/String;

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null serverUrl"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeoutInSec(I)Lcom/android/libraries/entitlement/CarrierConfig$Builder;
    .locals 0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_CarrierConfig$Builder;->timeoutInSec:Ljava/lang/Integer;

    return-object p0
.end method
