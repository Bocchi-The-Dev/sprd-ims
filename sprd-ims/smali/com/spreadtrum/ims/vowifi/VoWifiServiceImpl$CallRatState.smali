.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;
.super Ljava/lang/Enum;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallRatState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

.field public static final enum CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

.field public static final enum CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

.field public static final enum CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1795
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    const-string v1, "CALL_VOLTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOLTE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    const-string v3, "CALL_VOWIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_VOWIFI:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    const-string v5, "CALL_NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    .line 1794
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1794
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;
    .locals 1

    .line 1794
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;
    .locals 1

    .line 1794
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    return-object v0
.end method
