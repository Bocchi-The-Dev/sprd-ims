.class Lcom/spreadtrum/ims/ImsServiceImpl$VoWifiAttachStatus;
.super Ljava/lang/Object;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoWifiAttachStatus"
.end annotation


# static fields
.field public static final VOWIFI_ATTACHED:I = 0x1

.field public static final VOWIFI_ATTACH_FAIL:I = 0x3

.field public static final VOWIFI_ATTACH_START:I = 0x2

.field public static final VOWIFI_DETACHED:I = 0x0

.field public static final VOWIFI_DETACH_START:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
