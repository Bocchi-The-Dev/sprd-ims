.class public interface abstract Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;
.super Ljava/lang/Object;
.source "VoWifiCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallListener"
.end annotation


# virtual methods
.method public abstract onAliveCallUpdate(Z)V
.end method

.method public abstract onCallEnd(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
.end method

.method public abstract onCallIncoming(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
.end method

.method public abstract onCallRTCPChanged(ZIII)V
.end method

.method public abstract onCallRTPReceived(ZZ)V
.end method

.method public abstract onEnterECBM(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V
.end method

.method public abstract onExitECBM()V
.end method

.method public abstract onSRVCCFinished(Z)V
.end method

.method public abstract onUnsolicitedRequest(I)V
.end method
