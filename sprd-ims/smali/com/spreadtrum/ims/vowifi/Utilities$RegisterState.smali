.class public Lcom/spreadtrum/ims/vowifi/Utilities$RegisterState;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterState"
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PROGRESSING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
