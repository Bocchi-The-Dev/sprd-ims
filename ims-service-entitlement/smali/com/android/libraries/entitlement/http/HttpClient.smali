.class public Lcom/android/libraries/entitlement/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeConnection()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method private createConnection(Lcom/android/libraries/entitlement/http/HttpRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 90
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->network()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestProperties()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    iget-object v2, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->timeoutInSec()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    iget-object v0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->timeoutInSec()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    .line 107
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    iget-object p0, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 111
    new-instance p1, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 v0, 0x1e

    const-string v1, "Configure connection failed!"

    invoke-direct {p1, v0, v1, p0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getContentType(Ljava/net/URLConnection;)I
    .locals 3

    const-string v0, "Content-Type"

    .line 160
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "xml"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "text/vnd.wap.connectivity"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "json"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method private static getCookies(Ljava/net/URLConnection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Set-Cookie"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 178
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getHttpResponse(Ljava/net/HttpURLConnection;)Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/android/libraries/entitlement/http/HttpResponse;->builder()Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    move-result-object v0

    .line 126
    invoke-static {p0}, Lcom/android/libraries/entitlement/http/HttpClient;->getContentType(Ljava/net/URLConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setContentType(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    const/16 v1, 0x1f

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpClient.response headers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/libraries/entitlement/utils/DebugUtils;->logPii(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 135
    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setResponseCode(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    .line 136
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    invoke-static {p0}, Lcom/android/libraries/entitlement/http/HttpClient;->getCookies(Ljava/net/URLConnection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setCookies(Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;

    .line 143
    :try_start_1
    invoke-static {p0}, Lcom/android/libraries/entitlement/http/HttpClient;->readResponse(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClient.response body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/libraries/entitlement/utils/DebugUtils;->logPii(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p0}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->setBody(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/http/HttpResponse$Builder;->build()Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    new-instance v0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 v1, 0x20

    const-string v2, "Read response body/message failed!"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 131
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string v3, "Retry-After"

    .line 132
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Invalid connection response"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 138
    new-instance v0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string v2, "Read response code failed!"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readResponse(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/android/libraries/entitlement/utils/StreamUtils;->inputStreamToStringSafe(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 154
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method


# virtual methods
.method public request(Lcom/android/libraries/entitlement/http/HttpRequest;)Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpClient.request url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/libraries/entitlement/utils/DebugUtils;->logPii(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/libraries/entitlement/http/HttpClient;->createConnection(Lcom/android/libraries/entitlement/http/HttpRequest;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpClient.request headers (partial): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/libraries/entitlement/utils/DebugUtils;->logPii(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "POST"

    .line 65
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->requestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    :try_start_1
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest;->postData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClient.request post data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/libraries/entitlement/utils/DebugUtils;->logPii(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 66
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 74
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 75
    iget-object p1, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/android/libraries/entitlement/http/HttpClient;->getHttpResponse(Ljava/net/HttpURLConnection;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p1

    const-string v0, "ServiceEntitlement"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClient.response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpClient;->closeConnection()V

    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 79
    :try_start_5
    new-instance v0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/android/libraries/entitlement/http/HttpClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 81
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/libraries/entitlement/utils/StreamUtils;->inputStreamToStringSafe(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 84
    :goto_2
    invoke-direct {p0}, Lcom/android/libraries/entitlement/http/HttpClient;->closeConnection()V

    .line 85
    throw p1
.end method
