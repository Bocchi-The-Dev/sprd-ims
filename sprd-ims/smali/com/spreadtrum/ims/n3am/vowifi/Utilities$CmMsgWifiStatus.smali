.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmMsgWifiStatus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiSameAddr;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiBSSID;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 68
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;-><init>(I[Ljava/lang/String;)V

    .line 74
    return-void
.end method
