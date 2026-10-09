.class public Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;
.super Ljava/lang/Object;
.source "EapAkaChallenge.java"


# instance fields
.field private mAutn:[B

.field private mIdentifier:B

.field private mRand:[B

.field private mSimAuthenticationRequest:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput-byte v0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mIdentifier:B

    return-void
.end method

.method private getSimAuthChallengeData()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x22

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 199
    iget-object v3, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mRand:[B

    const/4 v4, 0x1

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x11

    aput-byte v2, v0, v3

    .line 201
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mAutn:[B

    const/16 v3, 0x12

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    .line 203
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseEapAkaChallenge(Ljava/lang/String;)Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 64
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    new-instance v1, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;

    invoke-direct {v1}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;-><init>()V

    .line 71
    invoke-direct {v1, p0}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->parseEapAkaHeader([B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {v1, p0}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->parseRandAndAutn([B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 72
    invoke-direct {v1}, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->getSimAuthChallengeData()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mSimAuthenticationRequest:Ljava/lang/String;

    return-object v1

    .line 75
    :cond_0
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string v1, "EAP-AKA challenge message is not valid"

    invoke-direct {p0, v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 66
    :catch_0
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const-string v1, "EAP-AKA challenge is not a valid base64!"

    invoke-direct {p0, v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private parseEapAkaHeader([B)Z
    .locals 6

    .line 101
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 105
    :cond_0
    aget-byte v0, p1, v2

    const/4 v3, 0x1

    .line 107
    aget-byte v4, p1, v3

    iput-byte v4, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mIdentifier:B

    const/4 p0, 0x2

    .line 109
    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p0, v1

    const/4 v1, 0x4

    .line 111
    aget-byte v1, p1, v1

    const/4 v4, 0x5

    .line 113
    aget-byte v4, p1, v4

    if-ne v0, v3, :cond_2

    .line 116
    array-length v5, p1

    if-ne p0, v5, :cond_2

    const/16 v5, 0x17

    if-ne v1, v5, :cond_2

    if-eq v4, v3, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 120
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid EAP-AKA Header, code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", real length="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", subType="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceEntitlement"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private parseRandAndAutn([B)Z
    .locals 9

    const/16 v0, 0x8

    .line 145
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    const-string v3, "ServiceEntitlement"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_6

    .line 146
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v5, 0x2

    if-gt v1, v5, :cond_0

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error! remainsLength = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 152
    :cond_0
    aget-byte v6, p1, v0

    add-int/lit8 v7, v0, 0x1

    .line 156
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v7, v7, 0x4

    if-le v7, v1, :cond_1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Length Error! length is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but only remains "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const/16 v1, 0x14

    const/16 v8, 0x10

    if-ne v6, v2, :cond_3

    if-eq v7, v1, :cond_2

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AT_RAND length is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    new-array v1, v8, [B

    .line 169
    iput-object v1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mRand:[B

    add-int/lit8 v2, v0, 0x4

    .line 170
    invoke-static {p1, v2, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    if-ne v6, v5, :cond_5

    if-eq v7, v1, :cond_4

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AT_AUTN length is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    new-array v1, v8, [B

    .line 176
    iput-object v1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mAutn:[B

    add-int/lit8 v2, v0, 0x4

    .line 177
    invoke-static {p1, v2, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_1
    add-int/2addr v0, v7

    goto/16 :goto_0

    .line 184
    :cond_6
    iget-object p1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mRand:[B

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mAutn:[B

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_2
    const-string p0, "Invalid Type Datas!"

    .line 185
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public getIdentifier()B
    .locals 0

    .line 92
    iget-byte p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mIdentifier:B

    return p0
.end method

.method public getSimAuthenticationRequest()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaChallenge;->mSimAuthenticationRequest:Ljava/lang/String;

    return-object p0
.end method
