.class final Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;
.super Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
.source "AutoValue_HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private network:Landroid/net/Network;

.field private postData:Lorg/json/JSONObject;

.field private requestMethod:Ljava/lang/String;

.field private requestProperties:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestPropertiesBuilder$:Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInSec:Ljava/lang/Integer;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/libraries/entitlement/http/HttpRequest;
    .locals 10

    .line 170
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestPropertiesBuilder$:Lcom/google/common/collect/ImmutableListMultimap$Builder;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    .line 175
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestMethod:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->postData:Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->timeoutInSec:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    new-instance v9, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;

    iget-object v5, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestProperties:Lcom/google/common/collect/ImmutableListMultimap;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->network:Landroid/net/Network;

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/common/collect/ImmutableListMultimap;ILandroid/net/Network;Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest-IA;)V

    return-object v9

    .line 179
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->url:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " url"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestMethod:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " requestMethod"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->postData:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    const-string v1, " postData"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_6
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->timeoutInSec:Ljava/lang/Integer;

    if-nez p0, :cond_7

    const-string p0, " timeoutInSec"

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_7
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

.method requestPropertiesBuilder()Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestPropertiesBuilder$:Lcom/google/common/collect/ImmutableListMultimap$Builder;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestPropertiesBuilder$:Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestPropertiesBuilder$:Lcom/google/common/collect/ImmutableListMultimap$Builder;

    return-object p0
.end method

.method public setNetwork(Landroid/net/Network;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->network:Landroid/net/Network;

    return-object p0
.end method

.method public setPostData(Lorg/json/JSONObject;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->postData:Lorg/json/JSONObject;

    return-object p0

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null postData"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->requestMethod:Ljava/lang/String;

    return-object p0

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null requestMethod"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeoutInSec(I)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 0

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->timeoutInSec:Ljava/lang/Integer;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/android/libraries/entitlement/http/AutoValue_HttpRequest$Builder;->url:Ljava/lang/String;

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null url"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
