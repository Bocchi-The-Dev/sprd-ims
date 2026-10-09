.class public final Lcom/android/imsserviceentitlement/debug/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public static isDebugBuild()Z
    .locals 2

    .line 39
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPiiLoggable()Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/android/imsserviceentitlement/debug/DebugUtils;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "dbg.imsse.pii_loggable"

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
