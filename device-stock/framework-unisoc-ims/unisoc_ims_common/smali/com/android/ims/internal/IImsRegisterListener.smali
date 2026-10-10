.class public interface abstract Lcom/android/ims/internal/IImsRegisterListener;
.super Ljava/lang/Object;
.source "IImsRegisterListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegisterListener$Stub;,
        Lcom/android/ims/internal/IImsRegisterListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegisterListener"


# virtual methods
.method public abstract blacklist imsRegisterStateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
