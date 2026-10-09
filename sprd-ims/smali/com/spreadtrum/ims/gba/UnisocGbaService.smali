.class public Lcom/spreadtrum/ims/gba/UnisocGbaService;
.super Landroid/telephony/gba/GbaService;
.source "UnisocGbaService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnisocGbaService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/telephony/gba/GbaService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationRequest(IIILandroid/net/Uri;[BZ)V
    .locals 9

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationRequest subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nafUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forceBootStrapping = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnisocGbaService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 32
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid phoneId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0, p2, v0}, Lcom/spreadtrum/ims/gba/UnisocGbaService;->reportAuthenticationFailure(II)V

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    invoke-virtual {p0, p2, v0}, Lcom/spreadtrum/ims/gba/UnisocGbaService;->reportAuthenticationFailure(II)V

    .line 40
    return-void

    .line 44
    :cond_1
    nop

    .line 45
    :try_start_0
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    move v4, p2

    move v5, p3

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/ims/internal/IImsServiceEx;->onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/android/ims/internal/GbaAuthResult;->getFailureReason()I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/android/ims/internal/GbaAuthResult;->getToken()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/ims/internal/GbaAuthResult;->getGbaKey()[B

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/ims/internal/GbaAuthResult;->getBtId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/spreadtrum/ims/gba/UnisocGbaService;->reportKeysAvailable(I[BLjava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/internal/GbaAuthResult;->getFailureReason()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/spreadtrum/ims/gba/UnisocGbaService;->reportAuthenticationFailure(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    const-string p1, "GBA fail"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    return-void
.end method
