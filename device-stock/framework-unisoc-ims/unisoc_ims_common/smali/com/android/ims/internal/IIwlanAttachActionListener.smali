.class public interface abstract Lcom/android/ims/internal/IIwlanAttachActionListener;
.super Ljava/lang/Object;
.source "IIwlanAttachActionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IIwlanAttachActionListener$Stub;,
        Lcom/android/ims/internal/IIwlanAttachActionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IIwlanAttachActionListener"


# virtual methods
.method public abstract blacklist onVoWifiAttachStateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
