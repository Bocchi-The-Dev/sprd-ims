.class public interface abstract Lcom/sprd/srmi/ISrmiCallback;
.super Ljava/lang/Object;
.source "ISrmiCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/srmi/ISrmiCallback$Stub;,
        Lcom/sprd/srmi/ISrmiCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sprd.srmi.ISrmiCallback"


# virtual methods
.method public abstract onMsgReceived(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
