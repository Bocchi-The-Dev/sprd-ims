.class public final Lcom/android/libraries/entitlement/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method private static isDebugBuild()Z
    .locals 2

    .line 40
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isPiiLoggable()Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/android/libraries/entitlement/utils/DebugUtils;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "dbg.se.pii_loggable"

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logPii(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/libraries/entitlement/utils/DebugUtils;->isPiiLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceEntitlement"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
