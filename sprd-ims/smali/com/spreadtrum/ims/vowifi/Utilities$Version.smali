.class public Lcom/spreadtrum/ims/vowifi/Utilities$Version;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field public static final DETAIL:Ljava/lang/String; = "Response phone busy if waiting for request/response."

.field public static final NUMBER:Ljava/lang/String; = "4.4.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionInfo()Ljava/lang/String;
    .locals 1

    .line 1751
    const-string v0, "4.4.3[Response phone busy if waiting for request/response.]"

    return-object v0
.end method
