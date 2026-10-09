.class public Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECBMRequest"
.end annotation


# static fields
.field public static final ECBM_STEP_ATTACH_NORMAL:I = 0x7

.field public static final ECBM_STEP_ATTACH_SOS:I = 0x3

.field public static final ECBM_STEP_DEATTACH_NORMAL:I = 0x2

.field public static final ECBM_STEP_DEATTACH_SOS:I = 0x6

.field public static final ECBM_STEP_DEREGISTER_NORMAL:I = 0x1

.field public static final ECBM_STEP_FORCE_RESET:I = 0xa

.field public static final ECBM_STEP_INVALID:I = 0x0

.field public static final ECBM_STEP_REGISTER_NORMAL:I = 0x8

.field public static final ECBM_STEP_REGISTER_SOS:I = 0x4

.field public static final ECBM_STEP_START_EMERGENCY_CALL:I = 0x5


# instance fields
.field private mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mIndex:I

.field private mNotifiedSOSAttach:Z

.field private mRequestSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[I)V
    .locals 3

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mNotifiedSOSAttach:Z

    .line 996
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 998
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    .line 999
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    .line 1000
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    .line 1001
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    return-void
.end method

.method public static get(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;ZZ)Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;
    .locals 1

    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    new-instance p1, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;-><init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[I)V

    return-object p1

    .line 1009
    :cond_0
    if-eqz p2, :cond_1

    .line 1010
    new-instance p1, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    const/16 p2, 0x8

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;-><init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[I)V

    return-object p1

    .line 1021
    :cond_1
    new-instance p1, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    const/4 p2, 0x4

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    invoke-direct {p1, p0, p2}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;-><init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;[I)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method


# virtual methods
.method public getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCurStep()I
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExitECBMStep()I
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    goto :goto_0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    .line 1053
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNextStep()I
    .locals 2

    .line 1039
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    .line 1040
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1041
    const/4 v0, 0x0

    return v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isNotifiedSOSAttach()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mNotifiedSOSAttach:Z

    return v0
.end method

.method public onNotifySOSAttachStart()V
    .locals 1

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mNotifiedSOSAttach:Z

    .line 1058
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", current step index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", step size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->mRequestSteps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
