.class public abstract Lcom/android/libraries/entitlement/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 2

    .line 107
    new-instance v0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;-><init>()V

    const-string v1, ""

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setRequestMethod(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setTimeoutInSec(I)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract network()Landroid/net/Network;
.end method

.method public abstract postData()Lorg/json/JSONObject;
.end method

.method public abstract requestMethod()Ljava/lang/String;
.end method

.method public abstract requestProperties()Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract timeoutInSec()I
.end method

.method public abstract url()Ljava/lang/String;
.end method
