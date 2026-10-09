.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;
.super Ljava/lang/Enum;
.source "VoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

.field public static final enum AUTO:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

.field public static final enum TCP:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

.field public static final enum UDP:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 84
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    const-string v1, "UDP"

    const/4 v2, 0x0

    const-string v3, "udp"

    invoke-direct {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->UDP:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    .line 85
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    const-string v3, "TCP"

    const/4 v4, 0x1

    const-string v5, "tcp"

    invoke-direct {v1, v3, v4, v5}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->TCP:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    .line 86
    new-instance v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    const-string v5, "AUTO"

    const/4 v6, 0x2

    const-string v7, "auto"

    invoke-direct {v3, v5, v6, v7}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->AUTO:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    .line 83
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

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

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->value:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;
    .locals 1

    .line 83
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;
    .locals 1

    .line 83
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->value:Ljava/lang/String;

    return-object v0
.end method
