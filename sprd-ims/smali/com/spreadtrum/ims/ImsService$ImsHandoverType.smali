.class Lcom/spreadtrum/ims/ImsService$ImsHandoverType;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImsHandoverType"
.end annotation


# static fields
.field public static final IDEL_HANDOVER_TO_VOLTE:I = 0x2

.field public static final IDEL_HANDOVER_TO_VOWIFI:I = 0x1

.field public static final INCALL_HANDOVER_TO_VOLTE:I = 0x4

.field public static final INCALL_HANDOVER_TO_VOWIFI:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
