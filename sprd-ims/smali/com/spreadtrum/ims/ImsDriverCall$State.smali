.class public final enum Lcom/spreadtrum/ims/ImsDriverCall$State;
.super Ljava/lang/Enum;
.source "ImsDriverCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsDriverCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/ImsDriverCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

.field public static final enum WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 172
    new-instance v0, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->ACTIVE:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 173
    new-instance v1, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v3, "HOLDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/ImsDriverCall$State;->HOLDING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 174
    new-instance v3, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v5, "DIALING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/ImsDriverCall$State;->DIALING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 175
    new-instance v5, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v7, "ALERTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/spreadtrum/ims/ImsDriverCall$State;->ALERTING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 176
    new-instance v7, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v9, "INCOMING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/spreadtrum/ims/ImsDriverCall$State;->INCOMING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 177
    new-instance v9, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v11, "WAITING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/spreadtrum/ims/ImsDriverCall$State;->WAITING:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 178
    new-instance v11, Lcom/spreadtrum/ims/ImsDriverCall$State;

    const-string v13, "DISCONNECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/spreadtrum/ims/ImsDriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/spreadtrum/ims/ImsDriverCall$State;->DISCONNECTED:Lcom/spreadtrum/ims/ImsDriverCall$State;

    .line 171
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/spreadtrum/ims/ImsDriverCall$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/spreadtrum/ims/ImsDriverCall$State;->$VALUES:[Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsDriverCall$State;
    .locals 1

    .line 171
    const-class v0, Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/ImsDriverCall$State;
    .locals 1

    .line 171
    sget-object v0, Lcom/spreadtrum/ims/ImsDriverCall$State;->$VALUES:[Lcom/spreadtrum/ims/ImsDriverCall$State;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/ImsDriverCall$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/ImsDriverCall$State;

    return-object v0
.end method
