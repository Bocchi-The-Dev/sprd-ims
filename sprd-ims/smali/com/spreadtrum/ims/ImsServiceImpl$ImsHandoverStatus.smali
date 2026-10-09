.class Lcom/spreadtrum/ims/ImsServiceImpl$ImsHandoverStatus;
.super Ljava/lang/Object;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImsHandoverStatus"
.end annotation


# static fields
.field public static final IMS_HANDOVER_FAIL:I = 0x0

.field public static final IMS_HANDOVER_NONE:I = -0x1

.field public static final IMS_HANDOVER_START:I = 0x2

.field public static final IMS_HANDOVER_SUCCESS:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
