.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttrSimReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO:I = 0x0

.field public static final YES:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 150
    const-string v0, "sim_ready"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 152
    return-void
.end method
