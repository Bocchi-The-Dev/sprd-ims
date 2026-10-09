.class public Lcom/spreadtrum/ims/vowifi/Utilities$ProviderUtils;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderUtils"
.end annotation


# static fields
.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.spreadtrum.vowifi.accountsettings"

.field public static final FUN_CALL:Ljava/lang/String; = "call"

.field public static final FUN_MESSAGE:Ljava/lang/String; = "message"

.field public static final FUN_REGISTER:Ljava/lang/String; = "register"

.field public static final FUN_SECURITY:Ljava/lang/String; = "security"

.field public static final FUN_UT:Ljava/lang/String; = "ut"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
