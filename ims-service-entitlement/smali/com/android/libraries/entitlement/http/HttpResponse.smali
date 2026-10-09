.class public abstract Lcom/android/libraries/entitlement/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 3

    .line 69
    new-instance v0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;-><init>()V

    const/4 v1, -0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->setContentType(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    const-string v1, ""

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setBody(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setResponseCode(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setCookies(Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract body()Ljava/lang/String;
.end method

.method public abstract contentType()I
.end method

.method public abstract cookies()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract responseCode()I
.end method

.method public abstract responseMessage()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResponse{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "contentType="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->contentType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " body=("

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " characters)"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " responseCode="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->responseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " responseMessage="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->responseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cookies=["

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->cookies()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cookies]}"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
