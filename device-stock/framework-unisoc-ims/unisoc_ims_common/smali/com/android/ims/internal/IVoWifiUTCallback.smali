.class public interface abstract Lcom/android/ims/internal/IVoWifiUTCallback;
.super Ljava/lang/Object;
.source "IVoWifiUTCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiUTCallback$Stub;,
        Lcom/android/ims/internal/IVoWifiUTCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWifiUTCallback"


# virtual methods
.method public abstract blacklist onEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
