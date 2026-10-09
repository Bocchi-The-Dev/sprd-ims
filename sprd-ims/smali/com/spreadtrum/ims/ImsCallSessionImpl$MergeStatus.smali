.class public final enum Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
.super Ljava/lang/Enum;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

.field public static final enum MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

.field public static final enum MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

.field public static final enum MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

.field public static final enum MERGE_UNKNOWN:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 114
    new-instance v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    const-string v1, "MERGE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_UNKNOWN:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 115
    new-instance v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    const-string v3, "MERGE_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_START:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 116
    new-instance v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    const-string v5, "MERGE_COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_COMPLETED:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 117
    new-instance v5, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    const-string v7, "MERGE_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->MERGE_END:Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    .line 113
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->$VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
    .locals 1

    .line 113
    const-class v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;
    .locals 1

    .line 113
    sget-object v0, Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->$VALUES:[Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/ImsCallSessionImpl$MergeStatus;

    return-object v0
.end method
