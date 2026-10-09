.class public Lcom/spreadtrum/ims/vowifi/Utilities$Camera;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera"
.end annotation


# static fields
.field private static final CAMERA_BACK:Ljava/lang/String; = "0"

.field private static final CAMERA_FRONT:Ljava/lang/String; = "1"

.field private static final CAMERA_NAME_BACK:Ljava/lang/String; = "back"

.field private static final CAMERA_NAME_FRONT:Ljava/lang/String; = "front"

.field private static final CAMERA_NAME_NULL:Ljava/lang/String; = "null"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBack(Ljava/lang/String;)Z
    .locals 1

    .line 780
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFront(Ljava/lang/String;)Z
    .locals 1

    .line 776
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 784
    nop

    .line 785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$Camera;->isFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    goto :goto_0

    .line 785
    :cond_1
    const-string p0, "null"

    .line 788
    :goto_0
    return-object p0
.end method
