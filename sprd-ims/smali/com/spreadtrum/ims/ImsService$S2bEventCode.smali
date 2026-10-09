.class public Lcom/spreadtrum/ims/ImsService$S2bEventCode;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S2bEventCode"
.end annotation


# static fields
.field public static final S2b_STATE_CONNECTED:I = 0x2

.field public static final S2b_STATE_IDLE:I = 0x0

.field public static final S2b_STATE_PROGRESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
