.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;
.super Ljava/lang/Enum;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncomingCallAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

.field public static final enum NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

.field public static final enum REJECT:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1787
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->NORMAL:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    const-string v3, "REJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->REJECT:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    .line 1786
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1786
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;
    .locals 1

    .line 1786
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;
    .locals 1

    .line 1786
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$IncomingCallAction;

    return-object v0
.end method
