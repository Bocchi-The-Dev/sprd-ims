.class final Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;
.super Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
.source "AutoValue_Ts43VowifiStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private addrStatus:Ljava/lang/Integer;

.field private entitlementStatus:Ljava/lang/Integer;

.field private provStatus:Ljava/lang/Integer;

.field private tcStatus:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus;
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->entitlementStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->tcStatus:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->addrStatus:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->provStatus:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->tcStatus:Ljava/lang/Integer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->addrStatus:Ljava/lang/Integer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->provStatus:Ljava/lang/Integer;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus;-><init>(IIIILcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus-IA;)V

    return-object v1

    .line 109
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->entitlementStatus:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " entitlementStatus"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->tcStatus:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v1, " tcStatus"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->addrStatus:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v1, " addrStatus"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->provStatus:Ljava/lang/Integer;

    if-nez p0, :cond_5

    const-string p0, " provStatus"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_5
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

.method public setAddrStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->addrStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEntitlementStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 0

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->entitlementStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public setProvStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 0

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->provStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTcStatus(I)Lcom/android/imsserviceentitlement/ts43/Ts43VowifiStatus$Builder;
    .locals 0

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/ts43/AutoValue_Ts43VowifiStatus$Builder;->tcStatus:Ljava/lang/Integer;

    return-object p0
.end method
