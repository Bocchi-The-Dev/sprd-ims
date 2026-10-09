.class public Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

.field private mInEcbm:Z

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminate(I)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 36
    :cond_1
    return-void
.end method

.method public getEmergencyCall()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    return-object v0
.end method

.method public isEcbm()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mInEcbm:Z

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 41
    return-void
.end method

.method public updateEcbm(ZLcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 2

    .line 44
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mInEcbm:Z

    .line 47
    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mEmergencyCallSession:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 49
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->exitEmergencyCallbackMode()V

    .line 52
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    goto :goto_1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    sget-object p2, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to give the ecbm callback as catch the RemoteException e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_1
    return-void
.end method
