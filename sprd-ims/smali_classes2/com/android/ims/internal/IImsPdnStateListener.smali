.class public interface abstract Lcom/android/ims/internal/IImsPdnStateListener;
.super Ljava/lang/Object;
.source "IImsPdnStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsPdnStateListener$Stub;,
        Lcom/android/ims/internal/IImsPdnStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsPdnStateListener"


# virtual methods
.method public abstract blacklist imsPdnStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
