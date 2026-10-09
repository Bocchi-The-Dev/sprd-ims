.class final enum Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;
.super Ljava/lang/Enum;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

.field public static final enum UPDATE_HOLD:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

.field public static final enum UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

.field public static final enum UPDATE_RESUME:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 213
    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    const-string v1, "UPDATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_NONE:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 214
    new-instance v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    const-string v3, "UPDATE_HOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_HOLD:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 215
    new-instance v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    const-string v5, "UPDATE_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->UPDATE_RESUME:Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    .line 212
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->$VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;
    .locals 1

    .line 212
    const-class v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;
    .locals 1

    .line 212
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->$VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/ImsCallSessionImpl$UpdateRequest;

    return-object v0
.end method
