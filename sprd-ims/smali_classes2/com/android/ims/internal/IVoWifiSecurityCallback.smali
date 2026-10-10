.class public interface abstract Lcom/android/ims/internal/IVoWifiSecurityCallback;
.super Ljava/lang/Object;
.source "IVoWifiSecurityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiSecurityCallback$Stub;,
        Lcom/android/ims/internal/IVoWifiSecurityCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWifiSecurityCallback"


# virtual methods
.method public abstract blacklist onS2bStateChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
