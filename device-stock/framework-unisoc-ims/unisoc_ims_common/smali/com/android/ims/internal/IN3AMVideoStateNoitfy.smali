.class public interface abstract Lcom/android/ims/internal/IN3AMVideoStateNoitfy;
.super Ljava/lang/Object;
.source "IN3AMVideoStateNoitfy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;,
        Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IN3AMVideoStateNoitfy"


# virtual methods
.method public abstract blacklist notifyRtpReceived(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyVideoQos(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
