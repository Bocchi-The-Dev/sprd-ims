.class public interface abstract Lcom/android/ims/internal/IVoWifiRegisterCallback;
.super Ljava/lang/Object;
.source "IVoWifiRegisterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiRegisterCallback$Stub;,
        Lcom/android/ims/internal/IVoWifiRegisterCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWifiRegisterCallback"


# virtual methods
.method public abstract blacklist onRegisterStateChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
