.class final Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;
.super Lcom/android/libraries/entitlement/http/HttpRequest;
.source "AutoValue_HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;
    }
.end annotation


# instance fields
.field private final network:Landroid/net/Network;

.field private final postData:Lorg/json/JSONObject;

.field private final requestMethod:Ljava/lang/String;

.field private final requestProperties:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutInSec:I

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/common/collect/ImmutableListMultimap;ILandroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/net/Network;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpRequest;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->url:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestMethod:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->postData:Lorg/json/JSONObject;

    .line 34
    iput-object p4, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    .line 35
    iput p5, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->timeoutInSec:I

    .line 36
    iput-object p6, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->network:Landroid/net/Network;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/common/collect/ImmutableListMultimap;ILandroid/net/Network;Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/common/collect/ImmutableListMultimap;ILandroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/android/libraries/entitlement/http/HttpRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 88
    check-cast p1, Lcom/android/libraries/entitlement/http/HttpRequest;

    .line 89
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestMethod:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->postData:Lorg/json/JSONObject;

    .line 91
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->postData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    .line 92
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestProperties()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMultimap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->timeoutInSec:I

    .line 93
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->timeoutInSec()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->network:Landroid/net/Network;

    if-nez p0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->network()Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->network()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 105
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 107
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->postData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 109
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMultimap;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 111
    iget v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->timeoutInSec:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 113
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->network:Landroid/net/Network;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public network()Landroid/net/Network;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->network:Landroid/net/Network;

    return-object p0
.end method

.method public postData()Lorg/json/JSONObject;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->postData:Lorg/json/JSONObject;

    return-object p0
.end method

.method public requestMethod()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public requestProperties()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    return-object p0
.end method

.method public timeoutInSec()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->timeoutInSec:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest{url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->postData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutInSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->timeoutInSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->network:Landroid/net/Network;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;->url:Ljava/lang/String;

    return-object p0
.end method
