.class public Lcom/spreadtrum/ims/ImsService$CallType;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallType"
.end annotation


# static fields
.field public static final NO_CALL:I = -0x1

.field public static final VOLTE_CALL:I = 0x0

.field public static final WIFI_CALL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
