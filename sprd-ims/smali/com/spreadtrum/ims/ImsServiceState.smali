.class public Lcom/spreadtrum/ims/ImsServiceState;
.super Ljava/lang/Object;
.source "ImsServiceState.java"


# instance fields
.field public mImsRegistered:Z

.field public mRegState:I

.field public mSrvccState:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    .line 10
    iput v0, p0, Lcom/spreadtrum/ims/ImsServiceState;->mSrvccState:I

    .line 13
    iput-boolean p1, p0, Lcom/spreadtrum/ims/ImsServiceState;->mImsRegistered:Z

    .line 14
    iput p2, p0, Lcom/spreadtrum/ims/ImsServiceState;->mRegState:I

    .line 15
    return-void
.end method
