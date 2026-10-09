.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrAirplaneMode;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttrAirplaneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 213
    const-string v0, "airplane_mode"

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 215
    return-void
.end method
