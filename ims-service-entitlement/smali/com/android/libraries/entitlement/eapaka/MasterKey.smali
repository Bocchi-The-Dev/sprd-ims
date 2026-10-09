.class Lcom/android/libraries/entitlement/eapaka/MasterKey;
.super Ljava/lang/Object;
.source "MasterKey.java"


# instance fields
.field private mAut:[B

.field private mEmsk:[B

.field private mEncr:[B

.field private mMasterKey:[B

.field private mMsk:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTwoBytes([B[B)[B
    .locals 1

    .line 316
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 317
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 318
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;[B[B)Lcom/android/libraries/entitlement/eapaka/MasterKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/libraries/entitlement/ServiceEntitlementException;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/android/libraries/entitlement/eapaka/MasterKey;

    invoke-direct {v0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;-><init>()V

    .line 75
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->from(Ljava/lang/String;[B[B)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "ServiceEntitlement"

    const-string p1, "Can\'t create master key due to invalid input!"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static doFunctionF(I[B[B[B)I
    .locals 3

    .line 353
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 354
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 355
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    const-wide/16 v1, -0x1

    .line 356
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    if-ltz p0, :cond_0

    const/16 v1, 0x13

    if-gt p0, v1, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-gt v1, p0, :cond_1

    const/16 v1, 0x27

    if-gt p0, v1, :cond_1

    .line 360
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    if-gt v1, p0, :cond_2

    const/16 v1, 0x3b

    if-gt p0, v1, :cond_2

    .line 362
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/16 v1, 0x3c

    if-gt v1, p0, :cond_3

    const/16 v1, 0x4f

    if-gt p0, v1, :cond_3

    .line 364
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 367
    :cond_3
    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method private doFunctionG([I[B)[B
    .locals 16

    .line 236
    const-class v0, B

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x4

    if-ge v4, v5, :cond_0

    .line 238
    aget v5, p1, v4

    invoke-static {v5}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object v5

    aget-object v7, v2, v4

    invoke-static {v5, v3, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x40

    new-array v7, v4, [B

    const/16 v8, 0x14

    move-object/from16 v9, p2

    .line 244
    invoke-static {v9, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v8

    :goto_1
    if-ge v9, v4, :cond_1

    .line 246
    aput-byte v3, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-array v4, v1, [I

    .line 253
    fill-array-data v4, :array_1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v3

    :goto_2
    const/16 v9, 0x10

    if-ge v4, v9, :cond_2

    mul-int/lit8 v9, v4, 0x4

    .line 257
    aget-object v10, v0, v4

    invoke-static {v7, v9, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_3
    const/16 v7, 0x50

    const/4 v10, 0x1

    if-ge v4, v7, :cond_3

    add-int/lit8 v7, v4, -0x3

    .line 262
    aget-object v7, v0, v7

    add-int/lit8 v11, v4, -0x8

    aget-object v11, v0, v11

    add-int/lit8 v12, v4, -0xe

    aget-object v12, v0, v12

    add-int/lit8 v13, v4, -0x10

    aget-object v13, v0, v13

    .line 264
    invoke-static {v7, v11, v12, v13}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doXor([B[B[B[B)[B

    move-result-object v7

    .line 263
    invoke-static {v10, v7}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionS(I[B)[B

    move-result-object v7

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    new-array v4, v6, [B

    new-array v11, v6, [B

    new-array v12, v6, [B

    new-array v13, v6, [B

    new-array v14, v6, [B

    .line 273
    aget-object v15, v2, v3

    invoke-static {v15, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    aget-object v15, v2, v10

    invoke-static {v15, v3, v11, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    aget-object v15, v2, v1

    invoke-static {v15, v3, v12, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v15, 0x3

    .line 276
    aget-object v9, v2, v15

    invoke-static {v9, v3, v13, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    aget-object v9, v2, v6

    invoke-static {v9, v3, v14, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v3

    :goto_4
    if-ge v9, v7, :cond_4

    .line 283
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {v5, v4}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionS(I[B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 284
    invoke-static {v9, v11, v12, v13}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionF(I[B[B[B)I

    move-result v8

    .line 285
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v14}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 286
    new-instance v14, Ljava/math/BigInteger;

    aget-object v6, v0, v9

    invoke-direct {v14, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 287
    invoke-static {v9}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionK(I)I

    move-result v14

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    add-int/2addr v7, v14

    const/16 v5, 0x1e

    .line 291
    invoke-static {v5, v11}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionS(I[B)[B

    move-result-object v5

    .line 293
    invoke-static {v7}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    move-object v11, v4

    move-object v4, v6

    move-object v14, v13

    const/4 v6, 0x4

    const/16 v7, 0x50

    const/16 v8, 0x14

    move-object v13, v12

    move-object v12, v5

    const/4 v5, 0x5

    goto :goto_4

    .line 297
    :cond_4
    aget-object v0, v2, v3

    invoke-static {v0, v4}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->addTwoBytes([B[B)[B

    move-result-object v0

    aput-object v0, v2, v3

    .line 298
    aget-object v0, v2, v10

    invoke-static {v0, v11}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->addTwoBytes([B[B)[B

    move-result-object v0

    aput-object v0, v2, v10

    .line 299
    aget-object v0, v2, v1

    invoke-static {v0, v12}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->addTwoBytes([B[B)[B

    move-result-object v0

    aput-object v0, v2, v1

    .line 300
    aget-object v0, v2, v15

    invoke-static {v0, v13}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->addTwoBytes([B[B)[B

    move-result-object v0

    aput-object v0, v2, v15

    const/4 v0, 0x4

    .line 301
    aget-object v4, v2, v0

    invoke-static {v4, v14}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->addTwoBytes([B[B)[B

    move-result-object v4

    aput-object v4, v2, v0

    const/16 v4, 0x14

    new-array v4, v4, [B

    .line 306
    aget-object v5, v2, v3

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    aget-object v5, v2, v10

    invoke-static {v5, v3, v4, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    aget-object v1, v2, v1

    const/16 v5, 0x8

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    aget-object v1, v2, v15

    const/16 v5, 0xc

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    aget-object v1, v2, v0

    const/16 v2, 0x10

    invoke-static {v1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x4
    .end array-data
.end method

.method private static doFunctionK(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x13

    if-gt p0, v0, :cond_0

    const p0, 0x5a827999

    return p0

    :cond_0
    const/16 v0, 0x14

    if-gt v0, p0, :cond_1

    const/16 v0, 0x27

    if-gt p0, v0, :cond_1

    const p0, 0x6ed9eba1

    return p0

    :cond_1
    const/16 v0, 0x28

    if-gt v0, p0, :cond_2

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_2

    const p0, -0x70e44324

    return p0

    :cond_2
    const/16 v0, 0x3c

    if-gt v0, p0, :cond_3

    const/16 v0, 0x4f

    if-gt p0, v0, :cond_3

    const p0, -0x359d3e2a    # -3715189.5f

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static doFunctionS(I[B)[B
    .locals 2

    .line 324
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    rsub-int/lit8 p0, p0, 0x20

    ushr-int p0, p1, p0

    int-to-long p0, p0

    .line 329
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static doXor([B[B[B[B)[B
    .locals 1

    .line 335
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 336
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 337
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 338
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    .line 339
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/libraries/entitlement/utils/BytesConverter;->convertIntegerTo4Bytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method private generatePsudoRandomNumber()[B
    .locals 15

    .line 143
    iget-object v0, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mMasterKey:[B

    const/4 v1, 0x0

    const-string v2, "ServiceEntitlement"

    if-eqz v0, :cond_6

    .line 148
    array-length v3, v0

    const/16 v4, 0x14

    if-eq v3, v4, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x5

    new-array v3, v3, [I

    .line 157
    fill-array-data v3, :array_0

    const/16 v5, 0xa0

    new-array v5, v5, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x4

    if-ge v7, v9, :cond_5

    move v9, v6

    :goto_1
    const/4 v10, 0x2

    if-ge v9, v10, :cond_4

    .line 190
    invoke-direct {p0, v3, v0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->doFunctionG([I[B)[B

    move-result-object v10

    if-eqz v10, :cond_3

    .line 191
    array-length v11, v10

    if-eq v11, v4, :cond_1

    goto :goto_3

    .line 196
    :cond_1
    invoke-static {v10, v6, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x14

    const/16 v11, 0x13

    const/4 v12, 0x1

    :goto_2
    if-ltz v11, :cond_2

    .line 203
    aget-byte v13, v0, v11

    and-int/lit16 v13, v13, 0xff

    aget-byte v14, v10, v11

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    .line 204
    aput-byte v13, v0, v11

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    const-string p0, "Get invalid w value from G function!"

    .line 192
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v5

    .line 149
    :cond_6
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid XKey!length="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    const-string v0, "null"

    goto :goto_5

    :cond_7
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method


# virtual methods
.method from(Ljava/lang/String;[B[B)V
    .locals 3

    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 82
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 84
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length p1, p1

    add-int/2addr p1, v2

    .line 86
    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    array-length p2, p2

    add-int/2addr p1, p2

    .line 88
    array-length p2, p3

    invoke-static {p3, v2, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    const-string p1, "SHA-1"

    .line 92
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mMasterKey:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ServiceEntitlement"

    const-string p3, "process SHA-1 failed"

    .line 96
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->generateTransientEapKeys()V

    return-void
.end method

.method generateTransientEapKeys()V
    .locals 5

    .line 113
    invoke-direct {p0}, Lcom/android/libraries/entitlement/eapaka/MasterKey;->generatePsudoRandomNumber()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    array-length v1, v0

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 121
    iput-object v2, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mEncr:[B

    const/4 v3, 0x0

    .line 122
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [B

    .line 124
    iput-object v2, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mAut:[B

    .line 125
    invoke-static {v0, v1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    const/16 v2, 0x40

    new-array v4, v2, [B

    .line 127
    iput-object v4, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mMsk:[B

    .line 128
    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x60

    new-array v4, v2, [B

    .line 130
    iput-object v4, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mEmsk:[B

    .line 131
    invoke-static {v0, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ServiceEntitlement"

    const-string v0, "Invalid TEKs data!"

    .line 116
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAut()[B
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/libraries/entitlement/eapaka/MasterKey;->mAut:[B

    return-object p0
.end method
