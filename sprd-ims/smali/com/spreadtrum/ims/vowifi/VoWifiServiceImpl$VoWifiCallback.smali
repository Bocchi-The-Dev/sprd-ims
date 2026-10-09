.class public interface abstract Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoWifiCallback"
.end annotation


# virtual methods
.method public abstract onAliveCallUpdate(Z)V
.end method

.method public abstract onAllCallsEnd()V
.end method

.method public abstract onAttachFinished(ZI)V
.end method

.method public abstract onAttachStateChanged(I)V
.end method

.method public abstract onAttachStopped(I)V
.end method

.method public abstract onCallIncoming(Lcom/android/ims/internal/IImsCallSession;)V
.end method

.method public abstract onDPDDisconnected()V
.end method

.method public abstract onMediaQualityChanged(ZIII)V
.end method

.method public abstract onNoRtpReceived(Z)V
.end method

.method public abstract onRegisterStateChanged(II)V
.end method

.method public abstract onReregisterFinished(ZI)V
.end method

.method public abstract onResetFinished(II)V
.end method

.method public abstract onResetStarted()V
.end method

.method public abstract onRtpReceived(Z)V
.end method

.method public abstract onSOSAttachStart(Lcom/android/ims/internal/IImsCallSession;)V
.end method

.method public abstract onSOSAttachStopped(Lcom/android/ims/internal/IImsCallSession;)V
.end method

.method public abstract onUnsolicitedUpdate(I)V
.end method

.method public abstract onUpdateDRStateFinished()V
.end method
