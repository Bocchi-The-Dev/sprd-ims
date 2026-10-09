.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;
.super Ljava/lang/Enum;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

.field public static final enum CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

.field public static final enum DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1791
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->CONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    .line 1790
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1790
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;
    .locals 1

    .line 1790
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;
    .locals 1

    .line 1790
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    return-object v0
.end method
