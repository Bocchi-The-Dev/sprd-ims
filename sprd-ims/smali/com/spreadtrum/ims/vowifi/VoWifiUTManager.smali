.class public Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;
.super Lcom/spreadtrum/ims/vowifi/ServiceManager;
.source "VoWifiUTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;,
        Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIUT:Lcom/android/ims/internal/IVoWifiUT;

.field private mIUTChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInAttaching:Z

.field private mRegisterState:I

.field private mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

.field private mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;

.field private mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

.field private mSessionId:I

.field private mSubId:I

.field private mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

.field private mUtImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/vowifi/ImsUtImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurityMgr(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUtConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;I)V
    .locals 0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUtConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPrepareResult(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->notifyPrepareResult(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceDisabled(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->notifyServiceDisabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->resetConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->updateSettings()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_UT:Ljava/lang/String;

    const-string v1, "com.spreadtrum.vowifi"

    const-string v2, "com.spreadtrum.vowifi.service.UTService"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    .line 34
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    .line 35
    const/4 p1, 0x0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mRegisterState:I

    .line 36
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mInAttaching:Z

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtImpls:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener-IA;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;

    .line 51
    return-void
.end method

.method private notifyPrepareResult(IZ)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    .line 196
    invoke-interface {v1, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;->onPrepareFinished(IZ)V

    .line 197
    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method private notifyServiceDisabled()V
    .locals 3

    .line 201
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    if-gez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    .line 204
    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;->onDisabled(I)V

    .line 205
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method private resetConfig()V
    .locals 2

    .line 185
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 186
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mInAttaching:Z

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    .line 189
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    .line 191
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    .line 192
    return-void

    .line 187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateSettings()Z
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    iget v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    invoke-virtual {v3, v0}, Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;->getLocalIP(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    invoke-virtual {v4, v0}, Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;->getDnsIP(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/android/ims/internal/IVoWifiUT;->updateIPAddr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update the IP address as catch the e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v1

    .line 170
    :cond_2
    :goto_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update the settings, please check!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v1
.end method


# virtual methods
.method public disabled()V
    .locals 3

    .line 148
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    if-lez v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(IZ)V

    .line 151
    :cond_0
    return-void
.end method

.method public getUtImpl(Ljava/lang/Integer;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtImpls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;-><init>(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;I)V

    .line 88
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtImpls:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-object v0
.end method

.method public initState(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->getUtImpl(Ljava/lang/Integer;)Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->initQueriedState()V

    .line 96
    return-void
.end method

.method protected onNativeReset()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    invoke-virtual {v0, v2, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(IZ)V

    .line 61
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->resetConfig()V

    .line 63
    :cond_0
    iput v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mRegisterState:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    .line 66
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    .line 67
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;->onInterfaceChanged(Lcom/android/ims/internal/IVoWifiUT;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method protected onServiceChanged()V
    .locals 3

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    .line 74
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IVoWifiUT$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiUT;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;

    .line 80
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    invoke-interface {v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;->onInterfaceChanged(Lcom/android/ims/internal/IVoWifiUT;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public prepare(I)V
    .locals 8

    .line 129
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 130
    if-ltz p1, :cond_2

    :try_start_0
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mRegisterState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mInAttaching:Z

    if-eqz v1, :cond_1

    .line 136
    const-string p1, "Already in attaching process, ignore the prepare action."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v0

    return-void

    .line 141
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mInAttaching:Z

    .line 142
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSubId:I

    .line 143
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityListener:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attach(ZIILjava/lang/String;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 132
    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->notifyPrepareResult(IZ)V

    .line 133
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->resetConfig()V

    .line 134
    monitor-exit v0

    return-void

    .line 144
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerUTInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;)Z
    .locals 1

    .line 99
    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not register the ut interface changed as the listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 p1, 0x0

    return p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUT:Lcom/android/ims/internal/IVoWifiUT;

    invoke-interface {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;->onInterfaceChanged(Lcom/android/ims/internal/IVoWifiUT;)V

    .line 108
    const/4 p1, 0x1

    return p1
.end method

.method public switchNextDns()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mUtConfig:Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_prefIPv4:Z

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;->getValidIPVersion(Z)I

    move-result v0

    .line 155
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSessionId:I

    .line 157
    invoke-virtual {v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->setIPVersion(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    iput v0, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 159
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->updateSettings()Z

    move-result v0

    return v0

    .line 164
    :cond_1
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to switch dns server as there isn\'t valid DNS address."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterUTInterfaceChanged(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$UTStateChangedListener;)Z
    .locals 1

    .line 112
    if-nez p1, :cond_0

    .line 113
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->TAG:Ljava/lang/String;

    const-string v0, "Can not register the ut interface changed as the listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mIUTChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public updateRegisterState(II)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mRegisterState:I

    .line 123
    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->notifyServiceDisabled()V

    .line 126
    :cond_0
    return-void
.end method

.method protected updateSecurityManager(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->mSecurityMgr:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    .line 55
    return-void
.end method
