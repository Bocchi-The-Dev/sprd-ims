.class public Lcom/spreadtrum/ims/vowifi/Utilities$NativeErrorCode;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeErrorCode"
.end annotation


# static fields
.field public static final DPD_DISCONNECT:I = 0xd20f

.field public static final IKE_HANDOVER_STOP:I = 0xd2c7

.field public static final IKE_INTERRUPT_STOP:I = 0xd2c6

.field public static final IKE_REKEY_FAIL:I = 0xd20b

.field public static final IPSEC_REKEY_FAIL:I = 0xd20a

.field public static final REG_EXPIRED_OTHER:I = 0xe112

.field public static final REG_EXPIRED_TIMEOUT:I = 0xe111

.field public static final REG_RETRY_AFTER_KEEP_SELECT:I = -0x80000000

.field public static final REG_RETRY_AFTER_NO_RETRY:I = 0xe113

.field public static final REG_RETRY_AFTER_RE_ATTACH:I = 0xe114

.field public static final REG_RETRY_AFTER_RE_SELECT:I = 0xe115

.field public static final REG_SERVER_FORBIDDEN:I = 0xe108

.field public static final REG_TIMEOUT:I = 0xe105

.field public static final SERVER_TIMEOUT:I = 0xe106

.field public static final UT_DNS_TIMEOUT:I = 0xd00b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
