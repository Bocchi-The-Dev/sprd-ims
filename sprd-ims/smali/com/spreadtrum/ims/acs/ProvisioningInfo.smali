.class public Lcom/spreadtrum/ims/acs/ProvisioningInfo;
.super Ljava/lang/Object;
.source "ProvisioningInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/acs/ProvisioningInfo$Version;
    }
.end annotation


# instance fields
.field private mAcceptBtn:Z

.field private mMessage:Ljava/lang/String;

.field private mRejectBtn:Z

.field private mTitle:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTokenValidity:J

.field private mValidity:J

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mValidity:J

    .line 31
    iput-wide v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mTokenValidity:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mAcceptBtn:Z

    .line 35
    iput-boolean v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mRejectBtn:Z

    return-void
.end method


# virtual methods
.method public getAcceptBtn()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mAcceptBtn:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectBtn()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mRejectBtn:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenValidity()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mTokenValidity:J

    return-wide v0
.end method

.method public getValidity()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mValidity:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mVersion:I

    return v0
.end method

.method public setAcceptBtn(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mAcceptBtn:Z

    .line 81
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mMessage:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRejectBtn(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mRejectBtn:Z

    .line 84
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mTitle:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mToken:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTokenValidity(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mTokenValidity:J

    .line 114
    return-void
.end method

.method public setValidity(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mValidity:J

    .line 72
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/spreadtrum/ims/acs/ProvisioningInfo;->mVersion:I

    .line 69
    return-void
.end method
