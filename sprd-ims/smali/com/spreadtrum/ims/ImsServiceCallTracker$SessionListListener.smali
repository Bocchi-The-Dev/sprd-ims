.class public interface abstract Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionListListener"
.end annotation


# virtual methods
.method public abstract onSessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onSessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
.end method
