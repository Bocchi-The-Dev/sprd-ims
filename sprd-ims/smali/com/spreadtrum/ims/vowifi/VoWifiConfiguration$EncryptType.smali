.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;
.super Ljava/lang/Enum;
.source "VoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_3DES:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_3IDEA:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_AES_CBC:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_AES_CTR:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_BLOWFISH:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_CAST:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_DES:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_DES_IV32:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_DES_IV64:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_IDEA:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

.field public static final enum TYPE_RC5:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 60
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v3, "TYPE_DES_IV64"

    const/4 v4, 0x1

    const-string v5, "DES_IV64"

    invoke-direct {v1, v3, v4, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_DES_IV64:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 61
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v5, "TYPE_DES"

    const/4 v6, 0x2

    const-string v7, "DES"

    invoke-direct {v3, v5, v6, v7}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_DES:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 62
    new-instance v5, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v7, "TYPE_3DES"

    const/4 v8, 0x3

    const-string v9, "3DES"

    invoke-direct {v5, v7, v8, v9}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_3DES:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 63
    new-instance v7, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v9, "TYPE_RC5"

    const/4 v10, 0x4

    const-string v11, "RC5"

    invoke-direct {v7, v9, v10, v11}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_RC5:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 64
    new-instance v9, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v11, "TYPE_IDEA"

    const/4 v12, 0x5

    const-string v13, "IDEA"

    invoke-direct {v9, v11, v12, v13}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_IDEA:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 65
    new-instance v11, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v13, "TYPE_CAST"

    const/4 v14, 0x6

    const-string v15, "CAST"

    invoke-direct {v11, v13, v14, v15}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_CAST:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 66
    new-instance v13, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v15, "TYPE_BLOWFISH"

    const/4 v14, 0x7

    const-string v12, "BLOWFISH"

    invoke-direct {v13, v15, v14, v12}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_BLOWFISH:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 67
    new-instance v12, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v15, "TYPE_3IDEA"

    const/16 v14, 0x8

    const-string v10, "3IDEA"

    invoke-direct {v12, v15, v14, v10}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_3IDEA:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 68
    new-instance v10, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v15, "TYPE_DES_IV32"

    const/16 v14, 0x9

    const-string v8, "DES_IV32"

    invoke-direct {v10, v15, v14, v8}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_DES_IV32:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 69
    new-instance v8, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v15, "TYPE_AES_CBC"

    const/16 v14, 0xa

    const-string v6, "AES_CBC"

    invoke-direct {v8, v15, v14, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_AES_CBC:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 70
    new-instance v6, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    const-string v15, "TYPE_AES_CTR"

    const/16 v14, 0xb

    const-string v4, "AES_CTR"

    invoke-direct {v6, v15, v14, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->TYPE_AES_CTR:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    .line 58
    const/16 v4, 0xc

    new-array v4, v4, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

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

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->value:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;
    .locals 1

    .line 58
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;
    .locals 1

    .line 58
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->value:Ljava/lang/String;

    return-object v0
.end method
