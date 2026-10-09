.class public Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBarringInfo"
.end annotation


# instance fields
.field public mCondition:I

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    return-void
.end method


# virtual methods
.method public setCondition(I)V
    .locals 0

    .line 1117
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mCondition:I

    .line 1118
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1121
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;->mStatus:I

    .line 1122
    return-void
.end method
