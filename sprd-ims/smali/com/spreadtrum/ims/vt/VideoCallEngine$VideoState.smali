.class Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;
.super Ljava/lang/Object;
.source "VideoCallEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoState"
.end annotation


# static fields
.field public static final AUDIO_ONLY:I = 0x0

.field public static final BIDIRECTIONAL:I = 0x3

.field public static final PAUSED:I = 0x4

.field public static final RX_ENABLED:I = 0x2

.field public static final TX_ENABLED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasState(II)Z
    .locals 0

    .line 625
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAudioOnly(I)Z
    .locals 2

    .line 577
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBidirectional(I)Z
    .locals 1

    .line 604
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isPaused(I)Z
    .locals 1

    .line 613
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1

    .line 595
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1

    .line 586
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$VideoState;->hasState(II)Z

    move-result p0

    return p0
.end method
