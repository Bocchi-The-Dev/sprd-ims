.class public interface abstract Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager$RegisterListener;
.super Ljava/lang/Object;
.source "VoWifiRegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiRegisterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegisterListener"
.end annotation


# virtual methods
.method public abstract onDisconnected()V
.end method

.method public abstract onLoginFinished(ZII)V
.end method

.method public abstract onLogout(II)V
.end method

.method public abstract onPrepareFinished(ZZ)V
.end method

.method public abstract onRefreshRegFinished(ZII)V
.end method

.method public abstract onRegisterStateChanged(II)V
.end method

.method public abstract onResetBlocked()V
.end method
