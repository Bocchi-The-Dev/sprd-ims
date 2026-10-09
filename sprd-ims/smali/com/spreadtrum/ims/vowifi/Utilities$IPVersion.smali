.class public Lcom/spreadtrum/ims/vowifi/Utilities$IPVersion;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPVersion"
.end annotation


# static fields
.field public static final IP_V4:I = 0x0

.field public static final IP_V6:I = 0x1

.field public static final NONE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
