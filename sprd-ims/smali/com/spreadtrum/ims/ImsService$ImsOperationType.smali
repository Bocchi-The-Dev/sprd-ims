.class Lcom/spreadtrum/ims/ImsService$ImsOperationType;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImsOperationType"
.end annotation


# static fields
.field public static final IMS_OPERATION_CANCEL_CURRENT_REQUEST:I = 0x5

.field public static final IMS_OPERATION_CP_REJECT_HANDOVER_TO_VOWIFI:I = 0x7

.field public static final IMS_OPERATION_CP_REJECT_SWITCH_TO_VOWIFI:I = 0x6

.field public static final IMS_OPERATION_HANDOVER_TO_VOLTE:I = 0x3

.field public static final IMS_OPERATION_HANDOVER_TO_VOWIFI:I = 0x2

.field public static final IMS_OPERATION_RELEASE_WIFI_RESOURCE:I = 0x8

.field public static final IMS_OPERATION_SET_VOWIFI_UNAVAILABLE:I = 0x4

.field public static final IMS_OPERATION_SWITCH_TO_VOLTE:I = 0x1

.field public static final IMS_OPERATION_SWITCH_TO_VOWIFI:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
