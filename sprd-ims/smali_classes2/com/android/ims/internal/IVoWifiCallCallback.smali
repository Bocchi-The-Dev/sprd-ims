.class public interface abstract Lcom/android/ims/internal/IVoWifiCallCallback;
.super Ljava/lang/Object;
.source "IVoWifiCallCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiCallCallback$Stub;,
        Lcom/android/ims/internal/IVoWifiCallCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IVoWifiCallCallback"


# virtual methods
.method public abstract blacklist onEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
