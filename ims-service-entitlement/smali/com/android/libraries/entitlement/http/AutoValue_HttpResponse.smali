.class final Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;
.super Lcom/android/libraries/entitlement/http/HttpResponse;
.source "AutoValue_HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final contentType:I

.field private final cookies:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->contentType:I

    .line 27
    iput-object p2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->body:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseCode:I

    .line 29
    iput-object p4, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseMessage:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->cookies:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->body:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->contentType:I

    return p0
.end method

.method public cookies()Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->cookies:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/android/libraries/entitlement/http/HttpResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/android/libraries/entitlement/http/HttpResponse;

    .line 65
    iget v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->contentType:I

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpResponse;->contentType()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->body:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseCode:I

    .line 67
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpResponse;->responseCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseMessage:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpResponse;->responseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->cookies:Lcom/google/common/collect/ImmutableList;

    .line 69
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpResponse;->cookies()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->contentType:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 80
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 82
    iget v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseCode:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 84
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 86
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->cookies:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public responseCode()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseCode:I

    return p0
.end method

.method public responseMessage()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;->responseMessage:Ljava/lang/String;

    return-object p0
.end method
