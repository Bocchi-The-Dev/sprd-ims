.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;
.super Ljava/lang/Enum;
.source "VoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_AES_XCBC_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_DES_MAC:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_HMAC_MD5_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_HMAC_SHA1_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_HMAC_SHA2_256_128:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_HMAC_SHA2_384_192:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_HMAC_SHA2_512_256:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_KPDK_MD5:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

.field public static final enum TYPE_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 38
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v3, "TYPE_HMAC_MD5_96"

    const/4 v4, 0x1

    const-string v5, "HMAC_MD5_96"

    invoke-direct {v1, v3, v4, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_HMAC_MD5_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 39
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v5, "TYPE_HMAC_SHA1_96"

    const/4 v6, 0x2

    const-string v7, "HMAC_SHA1_96"

    invoke-direct {v3, v5, v6, v7}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_HMAC_SHA1_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 40
    new-instance v5, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v7, "TYPE_DES_MAC"

    const/4 v8, 0x3

    const-string v9, "DES_MAC"

    invoke-direct {v5, v7, v8, v9}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_DES_MAC:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 41
    new-instance v7, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v9, "TYPE_KPDK_MD5"

    const/4 v10, 0x4

    const-string v11, "KPDK_MD5"

    invoke-direct {v7, v9, v10, v11}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_KPDK_MD5:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 42
    new-instance v9, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v11, "TYPE_AES_XCBC_96"

    const/4 v12, 0x5

    const-string v13, "AES_XCBC_96"

    invoke-direct {v9, v11, v12, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_AES_XCBC_96:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 43
    new-instance v11, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v13, "TYPE_HMAC_SHA2_256_128"

    const/4 v14, 0x6

    const-string v15, "HMAC_SHA2_256_128"

    invoke-direct {v11, v13, v14, v15}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_HMAC_SHA2_256_128:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 44
    new-instance v13, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v15, "TYPE_HMAC_SHA2_384_192"

    const/4 v14, 0x7

    const-string v12, "HMAC_SHA2_384_192"

    invoke-direct {v13, v15, v14, v12}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_HMAC_SHA2_384_192:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 45
    new-instance v12, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    const-string v15, "TYPE_HMAC_SHA2_512_256"

    const/16 v14, 0x8

    const-string v10, "HMAC_SHA2_512_256"

    invoke-direct {v12, v15, v14, v10}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->TYPE_HMAC_SHA2_512_256:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    .line 36
    const/16 v10, 0x9

    new-array v10, v10, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;
    .locals 1

    .line 36
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;
    .locals 1

    .line 36
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->value:Ljava/lang/String;

    return-object v0
.end method
