.class public interface abstract Lcom/android/ims/internal/IImsDozeManager;
.super Ljava/lang/Object;
.source "IImsDozeManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsDozeManager$Stub;,
        Lcom/android/ims/internal/IImsDozeManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsDozeManager"


# virtual methods
.method public abstract blacklist registerImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setImsDozeEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterImsDozeObserver(Lcom/android/ims/internal/IImsDozeObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
