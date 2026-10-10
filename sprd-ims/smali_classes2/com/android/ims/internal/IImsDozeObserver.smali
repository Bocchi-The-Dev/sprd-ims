.class public interface abstract Lcom/android/ims/internal/IImsDozeObserver;
.super Ljava/lang/Object;
.source "IImsDozeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsDozeObserver$Stub;,
        Lcom/android/ims/internal/IImsDozeObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsDozeObserver"


# virtual methods
.method public abstract blacklist onDozeModeOnOff(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
