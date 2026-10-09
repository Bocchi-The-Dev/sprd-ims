.class public Lcom/spreadtrum/ims/n3am/vowifi/Constants$IkeAttr;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAttr"
.end annotation


# static fields
.field public static final ID_CFG_DSCP_AUDIO:I = 0x2

.field public static final ID_CFG_DSCP_IKE:I = 0x0

.field public static final ID_CFG_DSCP_PORT1:I = 0x5

.field public static final ID_CFG_DSCP_PORT2:I = 0x7

.field public static final ID_CFG_DSCP_REMOTE_ADDR:I = 0x4

.field public static final ID_CFG_DSCP_SIP:I = 0x1

.field public static final ID_CFG_DSCP_VIDEO:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
