.class public Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;
.super Ljava/lang/Object;
.source "EapAkaResponse.java"


# instance fields
.field private mResponse:Ljava/lang/String;

.field private mSynchronizationFailureResponse:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMac([B[B)[B
    .locals 5

    const-string v0, "ServiceEntitlement"

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    .line 280
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 281
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 282
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 283
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 285
    array-length p1, p0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    new-array v1, p1, [B

    const/4 v3, 0x0

    .line 291
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 286
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid result! length should be 20, but "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "calculateMac failed!"

    .line 294
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private static createEapAkaChallengeResponse([BB)[B
    .locals 7

    .line 219
    array-length v0, p0

    add-int/lit8 v0, v0, 0x20

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 222
    aput-byte v3, v1, v2

    const/4 v4, 0x1

    .line 224
    aput-byte p1, v1, v4

    .line 226
    invoke-static {v0}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object p1

    .line 227
    aget-byte v0, p1, v3

    aput-byte v0, v1, v3

    const/4 v0, 0x3

    .line 228
    aget-byte p1, p1, v0

    aput-byte p1, v1, v0

    const/16 p1, 0x17

    const/4 v5, 0x4

    .line 229
    aput-byte p1, v1, v5

    const/4 p1, 0x5

    .line 230
    aput-byte v4, v1, p1

    const/4 v4, 0x6

    .line 232
    aput-byte v2, v1, v4

    const/4 v4, 0x7

    .line 233
    aput-byte v2, v1, v4

    const/16 v4, 0x8

    .line 238
    aput-byte v0, v1, v4

    .line 243
    array-length v6, p0

    add-int/2addr v6, v5

    div-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    const/16 v6, 0x9

    .line 244
    aput-byte v5, v1, v6

    .line 247
    array-length v5, p0

    mul-int/2addr v5, v4

    invoke-static {v5}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object v4

    .line 248
    aget-byte v3, v4, v3

    const/16 v5, 0xa

    aput-byte v3, v1, v5

    .line 249
    aget-byte v0, v4, v0

    const/16 v3, 0xb

    aput-byte v0, v1, v3

    .line 250
    array-length v0, p0

    const/16 v4, 0xc

    invoke-static {p0, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    array-length p0, p0

    add-int/2addr v4, p0

    add-int/lit8 p0, v4, 0x1

    .line 254
    aput-byte v3, v1, v4

    add-int/lit8 v0, p0, 0x1

    .line 257
    aput-byte p1, v1, p0

    add-int/lit8 p0, v0, 0x1

    .line 259
    aput-byte v2, v1, v0

    add-int/lit8 p1, p0, 0x1

    .line 260
    aput-byte v2, v1, p0

    add-int/lit8 p0, p1, 0x10

    .line 265
    invoke-static {v1, p1, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    return-object v1
.end method

.method static generateEapAkaChallengeResponse([BB[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p0, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->createEapAkaChallengeResponse([BB)[B

    move-result-object p1

    .line 165
    invoke-static {p2, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->calculateMac([B[B)[B

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 172
    :cond_1
    array-length p0, p0

    add-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    .line 173
    array-length v1, p2

    invoke-static {p2, v0, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static generateEapAkaSynchronizationFailureResponse([BB)[B
    .locals 6

    .line 187
    array-length v0, p0

    const/16 v1, 0xa

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 190
    aput-byte v4, v2, v3

    const/4 v5, 0x1

    .line 192
    aput-byte p1, v2, v5

    .line 194
    invoke-static {v0}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object p1

    .line 195
    aget-byte v0, p1, v4

    aput-byte v0, v2, v4

    const/4 v0, 0x3

    .line 196
    aget-byte p1, p1, v0

    aput-byte p1, v2, v0

    const/16 p1, 0x17

    const/4 v0, 0x4

    .line 197
    aput-byte p1, v2, v0

    const/4 p1, 0x5

    .line 198
    aput-byte v0, v2, p1

    const/4 p1, 0x6

    .line 200
    aput-byte v3, v2, p1

    const/4 p1, 0x7

    .line 201
    aput-byte v3, v2, p1

    const/16 p1, 0x8

    .line 204
    aput-byte v0, v2, p1

    const/16 p1, 0x9

    .line 207
    aput-byte v0, v2, p1

    .line 208
    array-length p1, p0

    invoke-static {p0, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static respondToEapAkaChallenge(Landroid/content/Context;ILcom/android/libraries/entitlement/eapaka/EapAkaChallenge;)Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 86
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 88
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 95
    invoke-virtual {p2}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->getSimAuthenticationRequest()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/16 v1, 0x81

    .line 92
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x14

    if-eqz p1, :cond_4

    .line 101
    invoke-static {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->from(Ljava/lang/String;)Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;

    move-result-object p1

    .line 102
    new-instance v2, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;

    invoke-direct {v2}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;-><init>()V

    .line 104
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getRes()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getIk()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getCk()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {v3, p0}, Lcom/android/libraries/entitlement/eapaka/EapAkaApi;->getImsiEap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getIk()[B

    move-result-object v3

    .line 114
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getCk()[B

    move-result-object v4

    .line 110
    invoke-static {p0, v3, v4}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->create(Ljava/lang/String;[B[B)Lcom/android/libraries/entitlement/eapaka/MasterKey;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->getAut()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getRes()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->getIdentifier()B

    move-result p2

    invoke-virtual {p0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->getAut()[B

    move-result-object p0

    .line 123
    invoke-static {p1, p2, p0}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->generateEapAkaChallengeResponse([BB[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->mResponse:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string p1, "Failed to generate EAP-AKA Challenge Response data!"

    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string p1, "Can\'t generate K_Aut!"

    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getAuts()[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->getAuts()[B

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->getIdentifier()B

    move-result p1

    .line 136
    invoke-static {p0, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->generateEapAkaSynchronizationFailureResponse([BB)[B

    move-result-object p0

    .line 139
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->mSynchronizationFailureResponse:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 142
    :cond_3
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string p1, "Invalid SIM EAP-AKA authentication response!"

    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 97
    :cond_4
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string p1, "EAP-AKA response is null!"

    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public response()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->mResponse:Ljava/lang/String;

    return-object p0
.end method

.method public synchronizationFailureResponse()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaResponse;->mSynchronizationFailureResponse:Ljava/lang/String;

    return-object p0
.end method
