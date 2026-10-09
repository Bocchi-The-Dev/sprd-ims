.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttrWifiStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONNECT:I = 0x1

.field public static final CONNECTING:I = 0x2

.field public static final DISCONNECT:I = 0x0

.field public static final PRECLOSE:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .line 225
    const-string v0, "wifi_status"

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 227
    return-void
.end method
