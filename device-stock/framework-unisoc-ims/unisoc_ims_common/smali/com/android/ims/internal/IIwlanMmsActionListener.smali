.class public interface abstract Lcom/android/ims/internal/IIwlanMmsActionListener;
.super Ljava/lang/Object;
.source "IIwlanMmsActionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IIwlanMmsActionListener$Stub;,
        Lcom/android/ims/internal/IIwlanMmsActionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IIwlanMmsActionListener"


# virtual methods
.method public abstract blacklist onMmsTransportStateChange(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
