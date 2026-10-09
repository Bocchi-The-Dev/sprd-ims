.class public Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;
.super Lcom/spreadtrum/ims/vowifi/ServiceManager;
.source "VoWifiSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;,
        Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;
    }
.end annotation


# static fields
.field private static final MSG_ACTION_ATTACH:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;

.field private mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mattachFailed(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attachFailed(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachProcessing(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attachProcessing(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachStopped(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attachStopped(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attachSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindRequest(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_SEC:Ljava/lang/String;

    const-string v1, "com.spreadtrum.vowifi"

    const-string v2, "com.spreadtrum.vowifi.service.SecurityService"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    .line 66
    new-instance p2, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;

    invoke-direct {p2, p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback-IA;)V

    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private attachFailed(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V
    .locals 1

    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {v0, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onFailed(I)V

    .line 288
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    return-void
.end method

.method private attachProcessing(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;I)V
    .locals 1

    .line 293
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onProgress(I)V

    .line 296
    :cond_0
    return-void
.end method

.method private attachStopped(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;ZI)V
    .locals 1

    .line 299
    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {v0, p2, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onStopped(ZI)V

    .line 303
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    return-void
.end method

.method private attachSuccess(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;)V
    .locals 1

    .line 278
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onSuccessed(I)V

    .line 281
    :cond_0
    return-void
.end method

.method private deattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V
    .locals 5

    .line 166
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to de-attach, is handover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez p1, :cond_0

    .line 168
    const-string p1, "Failed to deattach as the request is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 173
    const-string v1, "Failed to deattach as the security interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {p1, p2, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onStopped(ZI)V

    .line 175
    return-void

    .line 179
    :cond_1
    :try_start_0
    iget v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-interface {v1, v0, p2}, Lcom/android/ims/internal/IVoWifiSecurity;->stop(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catch the remote exception when start the s2b deattach. e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {p1, p2, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onStopped(ZI)V

    .line 184
    :goto_0
    return-void
.end method

.method private findRequest(I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    return-object p1
.end method

.method private findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    .line 255
    invoke-virtual {v2, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->matched(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    return-object v2

    .line 258
    :cond_1
    goto :goto_0

    .line 261
    :cond_2
    return-object v1
.end method

.method private notifyAllDisconnected()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    .line 268
    if-eqz v1, :cond_0

    .line 269
    iget-object v2, v1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    if-eqz v2, :cond_0

    .line 270
    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mListener:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    invoke-interface {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onDisconnected()V

    .line 273
    :cond_0
    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 275
    return-void
.end method


# virtual methods
.method public attach(ZIILjava/lang/String;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V
    .locals 5

    .line 121
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start the s2b attach. type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    const/16 v3, 0x7d0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, p1

    const/4 p1, 0x3

    .line 129
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p4, v1

    :cond_0
    aput-object p4, v4, p1

    const/4 p1, 0x4

    aput-object p5, v4, p1

    const-string p1, "attach"

    invoke-direct {v0, v3, p1, p2, v4}, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;-><init>(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->addToPendingList(Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;)V

    .line 130
    return-void

    .line 135
    :cond_1
    nop

    .line 136
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p4, v1

    .line 135
    :cond_2
    invoke-interface {v0, p1, p3, p2, p4}, Lcom/android/ims/internal/IVoWifiSecurity;->startWithAddr(ZIILjava/lang/String;)I

    move-result p1

    .line 137
    const/4 p4, -0x1

    if-ne p1, p4, :cond_3

    .line 139
    invoke-interface {p5, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onFailed(I)V

    goto :goto_0

    .line 141
    :cond_3
    new-instance p4, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;-><init>(IIILcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 142
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    goto :goto_1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Catch the remote exception when start the s2b attach. e: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-interface {p5, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onFailed(I)V

    .line 148
    :goto_1
    return-void
.end method

.method public deattach(IIZLcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    sget-object p3, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not find the matched request for sub["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], type["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], and it means it already stopped, give the result now."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 p1, 0x0

    invoke-interface {p4, p1, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onStopped(ZI)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V

    .line 159
    :goto_0
    return-void
.end method

.method public deattach(IZ)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V

    .line 163
    return-void
.end method

.method public forceStop(ILcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V
    .locals 4

    .line 187
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    const-string v1, "Force stop the s2b. Do as de-attach for normal type."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object v2

    .line 190
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not find the matched request for sub["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "], and it means it already stopped, give the result now."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {p2, v3, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;->onStopped(ZI)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->deattach(Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;Z)V

    .line 197
    :goto_0
    return-void
.end method

.method public getConfig(I)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(I)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    .line 240
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    :goto_0
    return-object p1
.end method

.method public getConfig(II)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    .line 235
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mConfig:Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    :goto_0
    return-object p1
.end method

.method protected handlePendingAction(Landroid/os/Message;)Z
    .locals 9

    .line 105
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the pending action, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;

    .line 109
    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    const/4 v1, 0x2

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;

    .line 109
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->attach(ZIILjava/lang/String;Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;)V

    .line 112
    return v2

    .line 115
    :cond_0
    return v1
.end method

.method protected onNativeReset()V
    .locals 2

    .line 81
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    const-string v1, "The security service reset. Notify as the service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->notifyAllDisconnected()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    .line 85
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    return-void
.end method

.method protected onServiceChanged()V
    .locals 4

    .line 91
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    .line 92
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mServiceBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IVoWifiSecurity$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IVoWifiSecurity;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    .line 94
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IVoWifiSecurity;->registerCallback(Lcom/android/ims/internal/IVoWifiSecurityCallback;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->clearPendingList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not register callback as catch the RemoteException. e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1
    return-void
.end method

.method public setIPVersion(II)Z
    .locals 3

    .line 218
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set the IP version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 221
    const-string p1, "Failed to set the IP version as the security interface is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v2

    .line 226
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IVoWifiSecurity;->switchLoginIpVersion(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 227
    :catch_0
    move-exception p1

    .line 228
    sget-object p2, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catc the remote exception when set the IP version. e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v2
.end method

.method public setIPVersion(III)Z
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    .line 214
    if-eqz p1, :cond_0

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-virtual {p0, p1, p3}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->setIPVersion(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startMobike(I)V
    .locals 3

    .line 200
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start mobike for sub["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as normal type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->findRequest(II)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->mISecurity:Lcom/android/ims/internal/IVoWifiSecurity;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    :try_start_0
    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityRequest;->mSessionId:I

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IVoWifiSecurity;->startMobike(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception p1

    .line 208
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch the remote exception when start mobike. e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_1
    :goto_1
    return-void
.end method
