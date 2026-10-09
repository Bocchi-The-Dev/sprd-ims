.class public Lcom/android/libraries/entitlement/eapaka/EapAkaApi;
.super Ljava/lang/Object;
.source "EapAkaApi.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/android/libraries/entitlement/http/HttpClient;

.field private final mSimSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/libraries/entitlement/http/HttpClient;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/http/HttpClient;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;-><init>(Landroid/content/Context;ILcom/android/libraries/entitlement/http/HttpClient;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/libraries/entitlement/http/HttpClient;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mSimSubscriptionId:I

    .line 100
    iput-object p3, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mHttpClient:Lcom/android/libraries/entitlement/http/HttpClient;

    return-void
.end method

.method private appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 364
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 365
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method private appendParametersForServiceEntitlementRequest(Landroid/net/Uri$Builder;Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/libraries/entitlement/ServiceEntitlementRequest;",
            ")V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mSimSubscriptionId:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 271
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->authenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->getImsiEap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAP_ID"

    .line 273
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSI"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->authenticationToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 284
    :goto_0
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->notificationToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->notificationAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notif_action"

    .line 286
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->notificationToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notif_token"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    :cond_1
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "terminal_id"

    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 299
    :goto_1
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->appVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->appName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "app"

    .line 303
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 308
    :cond_3
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalVendor()Ljava/lang/String;

    move-result-object p0

    const-string p2, "terminal_vendor"

    invoke-virtual {p1, p2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 309
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalModel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "terminal_model"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 310
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->terminalSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "terminal_sw_version"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->configurationVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vers"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->entitlementVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "entitlement_version"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private challengeResponse(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/libraries/entitlement/CarrierConfig;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/libraries/entitlement/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    const-string v0, "ServiceEntitlement"

    const-string v1, "challengeResponse"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eap-relay-packet"

    .line 210
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    invoke-static {}, Lcom/android/libraries/entitlement/http/HttpRequest;->builder()Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->serverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string v1, "POST"

    .line 218
    invoke-virtual {p1, v1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setRequestMethod(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1, v0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string v0, "Accept"

    .line 220
    invoke-virtual {p1, v0, p4}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string p4, "Content-Type"

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    .line 221
    invoke-virtual {p1, p4, v0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string p4, "Cookie"

    .line 224
    invoke-virtual {p1, p4, p3}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->addRequestProperty(Ljava/lang/String;Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->timeoutInSec()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setTimeoutInSec(I)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->network()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setNetwork(Landroid/net/Network;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->build()Lcom/android/libraries/entitlement/http/HttpRequest;

    move-result-object p1

    .line 228
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mHttpClient:Lcom/android/libraries/entitlement/http/HttpClient;

    invoke-virtual {p0, p1}, Lcom/android/libraries/entitlement/http/HttpClient;->request(Lcom/android/libraries/entitlement/http/HttpRequest;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 212
    new-instance p1, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 p2, 0x20

    const-string p3, "Failed to put post data"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getImsiEap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 381
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "0"

    if-ne v1, v2, :cond_1

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 386
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@nai.epc.mnc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mcc"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".3gppnetwork.org"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private httpGet(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/android/libraries/entitlement/http/HttpRequest;->builder()Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string v0, "GET"

    .line 355
    invoke-virtual {p1, v0}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setRequestMethod(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    const-string v0, "Accept"

    .line 356
    invoke-virtual {p1, v0, p3}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->timeoutInSec()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setTimeoutInSec(I)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->network()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->setNetwork(Landroid/net/Network;)Lcom/android/libraries/entitlement/http/HttpRequest$Builder;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/http/HttpRequest$Builder;->build()Lcom/android/libraries/entitlement/http/HttpRequest;

    move-result-object p1

    .line 360
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mHttpClient:Lcom/android/libraries/entitlement/http/HttpClient;

    invoke-virtual {p0, p1}, Lcom/android/libraries/entitlement/http/HttpClient;->request(Lcom/android/libraries/entitlement/http/HttpRequest;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private respondToEapAkaChallenge(Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/http/HttpResponse;ILjava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/android/libraries/entitlement/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "eap-relay-packet"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-static {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->parseEapAkaChallenge(Ljava/lang/String;)Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->mSimSubscriptionId:I

    .line 172
    invoke-static {v1, v2, v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->respondToEapAkaChallenge(Landroid/content/Context;ILcom/android/libraries/entitlement/eapaka/EapAkaChallenge;)Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->response()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->response()Ljava/lang/String;

    move-result-object p3

    .line 178
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/http/HttpResponse;->cookies()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 175
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->challengeResponse(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->synchronizationFailureResponse()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "ServiceEntitlement"

    const-string v2, "synchronization failure"

    .line 181
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->synchronizationFailureResponse()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/http/HttpResponse;->cookies()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    .line 183
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->challengeResponse(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p2

    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->respondToEapAkaChallenge(Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/http/HttpResponse;ILjava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 p1, 0x15

    const-string p2, "Unable to recover from EAP-AKA synchroinization failure"

    invoke-direct {p0, p1, p2}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 197
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "EapAkaResponse invalid."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 p2, 0x20

    const-string p3, "Failed to parse json object"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public queryEntitlementStatus(Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/libraries/entitlement/CarrierConfig;",
            "Lcom/android/libraries/entitlement/ServiceEntitlementRequest;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/CarrierConfig;->serverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0, p1, p3}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->appendParametersForServiceEntitlementRequest(Landroid/net/Uri$Builder;Lcom/google/common/collect/ImmutableList;Lcom/android/libraries/entitlement/ServiceEntitlementRequest;)V

    .line 116
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->authenticationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "ServiceEntitlement"

    if-nez p1, :cond_0

    const-string p1, "Fast Re-Authentication"

    .line 118
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->acceptContentType()Ljava/lang/String;

    move-result-object p3

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->httpGet(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Full Authentication"

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/vnd.gsma.eap-relay.v1.0+json"

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->httpGet(Ljava/lang/String;Lcom/android/libraries/entitlement/CarrierConfig;Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p1

    const/4 v0, 0x2

    .line 133
    invoke-virtual {p3}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest;->acceptContentType()Ljava/lang/String;

    move-result-object p3

    .line 129
    invoke-direct {p0, p2, p1, v0, p3}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->respondToEapAkaChallenge(Lcom/android/libraries/entitlement/CarrierConfig;Lcom/android/libraries/entitlement/http/HttpResponse;ILjava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
