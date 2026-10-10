.class public interface abstract Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;
.super Ljava/lang/Object;
.source "IVoWiFiAvailabilityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Stub;,
        Lcom/android/ims/internal/IVoWiFiAvailabilityCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWiFiAvailabilityCallback"


# virtual methods
.method public abstract blacklist onVoWiFiAvailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVoWiFiUnavailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
