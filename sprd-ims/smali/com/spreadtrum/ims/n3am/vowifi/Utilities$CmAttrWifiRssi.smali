.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttrWifiRssi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:I = -0x7f


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 289
    const-string v0, "wifi_rssi_response"

    const/16 v1, 0xe0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 291
    return-void
.end method
