.class Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;
.super Ljava/lang/Object;
.source "VoWifiSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecurityRequest"
.end annotation


# instance fields
.field public mConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

.field public mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

.field public mSessionId:I

.field public mSubId:I

.field public mType:I


# direct methods
.method public constructor <init>(IIILcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    .line 400
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    .line 401
    iput p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mType:I

    .line 402
    iput-object p4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    .line 403
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 415
    instance-of v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    if-eqz v0, :cond_2

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    .line 417
    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    .line 418
    return v1

    .line 419
    :cond_0
    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    if-ne v2, v3, :cond_1

    .line 420
    return v1

    .line 421
    :cond_1
    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    iget v3, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mType:I

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mType:I

    if-ne v2, v0, :cond_2

    .line 422
    return v1

    .line 426
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 431
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matched(II)Z
    .locals 1

    .line 410
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSubId:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mType:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateConfig(Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    .line 407
    return-void
.end method
