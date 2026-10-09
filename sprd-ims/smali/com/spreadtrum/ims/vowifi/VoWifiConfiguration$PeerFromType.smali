.class public final enum Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;
.super Ljava/lang/Enum;
.source "VoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeerFromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

.field public static final enum FROM_PAI:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

.field public static final enum FROM_SIP_FROM:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    const-string v1, "FROM_PAI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->FROM_PAI:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    .line 23
    new-instance v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    const-string v4, "FROM_SIP_FROM"

    invoke-direct {v1, v4, v3, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->FROM_SIP_FROM:Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    .line 21
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-boolean p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->value:Z

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;
    .locals 1

    .line 21
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;
    .locals 1

    .line 21
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->$VALUES:[Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->value:Z

    return v0
.end method
