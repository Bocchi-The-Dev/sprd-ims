.class Lcom/spreadtrum/ims/ImsService$ImsHandoverResult;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImsHandoverResult"
.end annotation


# static fields
.field public static final IMS_HANDOVER_ATTACH_FAIL:I = 0x4

.field public static final IMS_HANDOVER_ATTACH_SUCCESS:I = 0x5

.field public static final IMS_HANDOVER_PDN_BUILD_FAIL:I = 0x2

.field public static final IMS_HANDOVER_REGISTER_FAIL:I = 0x0

.field public static final IMS_HANDOVER_RE_REGISTER_FAIL:I = 0x3

.field public static final IMS_HANDOVER_SRVCC_FAILED:I = 0x6

.field public static final IMS_HANDOVER_SUCCESS:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
