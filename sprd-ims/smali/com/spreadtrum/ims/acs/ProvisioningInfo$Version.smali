.class public final enum Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;
.super Ljava/lang/Enum;
.source "ProvisioningInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/acs/ProvisioningInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

.field public static final enum DISABLED_DORMANT:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

.field public static final enum DISABLED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

.field public static final enum RESETED:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

.field public static final enum RESETED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;


# instance fields
.field private mVers:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    new-instance v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    const-string v1, "RESETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->RESETED:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    .line 45
    new-instance v1, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    const-string v3, "RESETED_NOQUERY"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->RESETED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    .line 49
    new-instance v3, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    const-string v5, "DISABLED_NOQUERY"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v3, v5, v6, v7}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->DISABLED_NOQUERY:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    .line 53
    new-instance v5, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    const-string v7, "DISABLED_DORMANT"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->DISABLED_DORMANT:Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    .line 37
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->$VALUES:[Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->mVers:I

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;
    .locals 1

    .line 37
    const-class v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;
    .locals 1

    .line 37
    sget-object v0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->$VALUES:[Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;->mVers:I

    return v0
.end method
