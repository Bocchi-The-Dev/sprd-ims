.class public Lcom/spreadtrum/ims/ImsService$CallEndEvent;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallEndEvent"
.end annotation


# static fields
.field public static final INVALID_CALL_END:I = -0x1

.field public static final VOLTE_CALL_END:I = 0x2

.field public static final WIFI_CALL_END:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
