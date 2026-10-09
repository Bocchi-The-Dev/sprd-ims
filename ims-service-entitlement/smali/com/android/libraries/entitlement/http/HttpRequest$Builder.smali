.class public abstract Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/http/HttpRequest;
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
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->requestPropertiesBuilder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    return-object p0
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/libraries/entitlement/http/HttpRequest$Builder;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->requestPropertiesBuilder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    return-object p0
.end method

.method public abstract build()Lcom/android/libraries/entitlement/http/HttpRequest;
.end method

.method abstract requestPropertiesBuilder()Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setNetwork(Landroid/net/Network;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.end method

.method public abstract setPostData(Lorg/json/JSONObject;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.end method

.method public abstract setRequestMethod(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.end method

.method public abstract setTimeoutInSec(I)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.end method

.method public abstract setUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.end method
