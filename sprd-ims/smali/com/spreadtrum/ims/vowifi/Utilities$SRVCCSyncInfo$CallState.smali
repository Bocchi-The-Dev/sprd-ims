.class public Lcom/spreadtrum/ims/vowifi/Utilities$SRVCCSyncInfo$CallState;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities$SRVCCSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallState"
.end annotation


# static fields
.field public static final ACCEPT_STATE:I = 0x5

.field public static final ACTIVE_STATE:I = 0x3

.field public static final CCBS_RECALL_STATE:I = 0x8

.field public static final DIALING_STATE:I = 0x1

.field public static final IDLE_STATE:I = 0x0

.field public static final INCOMING_STATE:I = 0x4

.field public static final MAX_STATE:I = 0xa

.field public static final MODIFY_PENDING_STATE:I = 0x6

.field public static final MT_CSFB_STATE:I = 0x9

.field public static final OUTGOING_STATE:I = 0x2

.field public static final RELEASE_STATE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
