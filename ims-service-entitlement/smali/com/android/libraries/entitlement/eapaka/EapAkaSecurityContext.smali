.class Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;
.super Ljava/lang/Object;
.source "EapAkaSecurityContext.java"


# instance fields
.field private mAuts:[B

.field private mCk:[B

.field private mIk:[B

.field private mRes:[B

.field private mValid:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;-><init>()V

    .line 60
    invoke-direct {v0, p0}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->parseResponseData(Ljava/lang/String;)V

    .line 61
    invoke-direct {v0}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;

    const/16 v0, 0x14

    const-string v1, "Invalid SIM EAP-AKA authentication response!"

    invoke-direct {p0, v0, v1}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private isValid()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mValid:Z

    return p0
.end method

.method private parseResponseData(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ServiceEntitlement"

    .line 76
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded response data length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    .line 88
    :cond_0
    aget-byte v2, p1, v1

    const/16 v3, -0x25

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    .line 91
    invoke-direct {p0, v4, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->parseTag(I[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mRes:[B

    if-nez v1, :cond_1

    const-string p0, "Invalid data: can\'t parse RES!"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_1
    array-length v1, v1

    add-int/2addr v1, v4

    add-int/2addr v1, v4

    .line 98
    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->parseTag(I[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mCk:[B

    if-nez v2, :cond_2

    const-string p0, "Invalid data: can\'t parse CK!"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_2
    array-length v2, v2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 105
    invoke-direct {p0, v1, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->parseTag(I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mIk:[B

    if-nez p1, :cond_3

    const-string p0, "Invalid data: can\'t parse IK!"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_3
    iput-boolean v4, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mValid:Z

    goto :goto_0

    :cond_4
    const/16 v3, -0x24

    if-ne v2, v3, :cond_6

    .line 114
    invoke-direct {p0, v4, p1}, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->parseTag(I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mAuts:[B

    if-nez p1, :cond_5

    const-string p0, "Invalid data: can\'t parse AUTS!"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_5
    iput-boolean v4, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mValid:Z

    :goto_0
    return-void

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid tag, tag="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p0, "Response is not a valid base-64 content"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseTag(I[B)[B
    .locals 4

    .line 128
    array-length p0, p2

    const/4 v0, 0x0

    const-string v1, "ServiceEntitlement"

    if-lt p1, p0, :cond_0

    const-string p0, "No length byte!"

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 132
    :cond_0
    aget-byte p0, p2, p1

    and-int/lit16 p0, p0, 0xff

    add-int v2, p1, p0

    .line 133
    array-length v3, p2

    if-lt v2, v3, :cond_1

    const-string p0, "Invalid data length!"

    .line 134
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 138
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 139
    invoke-static {p2, p1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getAuts()[B
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mAuts:[B

    return-object p0
.end method

.method public getCk()[B
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mCk:[B

    return-object p0
.end method

.method public getIk()[B
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mIk:[B

    return-object p0
.end method

.method public getRes()[B
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/EapAkaSecurityContext;->mRes:[B

    return-object p0
.end method
