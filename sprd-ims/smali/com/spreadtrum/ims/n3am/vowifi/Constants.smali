.class public Lcom/spreadtrum/ims/n3am/vowifi/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$IkeAttr;,
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$IkeMsgId;,
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$ImsAttr;,
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$ImsMsgId;,
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$CmAttr;,
        Lcom/spreadtrum/ims/n3am/vowifi/Constants$CmMsgId;
    }
.end annotation


# static fields
.field public static final SRMI_NAME_CM:Ljava/lang/String; = "CMCP_CPAP"

.field public static final SRMI_NAME_CM_SIM1:Ljava/lang/String; = "CMCP_CPAP_SIM1"

.field public static final SRMI_NAME_CM_SIM2:Ljava/lang/String; = "CMCP_CPAP_SIM2"

.field public static final SRMI_NAME_IKE:Ljava/lang/String; = "ike-srmi-ap-n3am"

.field public static final SRMI_NAME_IMS:Ljava/lang/String; = "IMS"

.field public static final SRMI_TYPE_CM:I

.field public static final SRMI_TYPE_IKE:I

.field public static final SRMI_TYPE_IMS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
