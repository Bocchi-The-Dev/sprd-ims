.class final Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;
.super Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.source "AutoValue_HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private contentType:Ljava/lang/Integer;

.field private cookies:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseCode:Ljava/lang/Integer;

.field private responseMessage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->contentType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseCode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->cookies:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->body:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseCode:Ljava/lang/Integer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseMessage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->cookies:Lcom/google/common/collect/ImmutableList;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse-IA;)V

    return-object v1

    .line 136
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->contentType:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " contentType"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->body:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " body"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseCode:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v1, " responseCode"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseMessage:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " responseMessage"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_5
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->cookies:Lcom/google/common/collect/ImmutableList;

    if-nez p0, :cond_6

    const-string p0, " cookies"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_6
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

.method public setBody(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->body:Ljava/lang/String;

    return-object p0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null body"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentType(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 0

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->contentType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCookies(Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/libraries/entitlement/http/HttpResponse$Builder;"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->cookies:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setResponseCode(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 0

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResponseMessage(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpResponse$Builder;->responseMessage:Ljava/lang/String;

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null responseMessage"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
