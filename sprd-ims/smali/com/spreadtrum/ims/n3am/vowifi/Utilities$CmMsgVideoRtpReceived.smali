.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoRtpReceived;
.super Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmMsgVideoRtpReceived"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 114
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;-><init>(I[Ljava/lang/String;)V

    .line 115
    return-void
.end method
