.class public interface abstract Lcom/android/ims/internal/IVoWiFiAttachCallback;
.super Ljava/lang/Object;
.source "IVoWiFiAttachCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWiFiAttachCallback$Stub;,
        Lcom/android/ims/internal/IVoWiFiAttachCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWiFiAttachCallback"


# virtual methods
.method public abstract blacklist onVoWiFiAttachStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
