.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosLoss;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttrVideoQosLoss"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 259
    const-string v0, "video_qos_loss"

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 261
    return-void
.end method
