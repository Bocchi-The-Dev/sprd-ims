.class public final Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;
.super Ljava/lang/Object;
.source "GbaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/gba/GbaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/spreadtrum/ims/gba/GbaHandler$ThreadRequest;->argument:Ljava/lang/Object;

    .line 88
    return-void
.end method
