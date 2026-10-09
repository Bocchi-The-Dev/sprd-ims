.class Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;
.super Ljava/lang/Object;
.source "ImsService.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyVoWifiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliveCallUpdate(Z)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 2079
    :cond_0
    const/4 p1, 0x0

    .line 2078
    :goto_0
    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ImsService;->onVideoStateChanged(I)V

    .line 2080
    return-void
.end method

.method public onAllCallsEnd()V
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2085
    return-void
.end method

.method public onAttachFinished(ZI)V
    .locals 3

    .line 2011
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 2013
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getSecurityConfig()Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object p1

    .line 2014
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object p2

    const/16 v1, 0xc9

    invoke-virtual {p2, v1, v0, v0, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2015
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2016
    goto :goto_0

    .line 2018
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object p1

    const/16 v1, 0xca

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2019
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2021
    :goto_0
    return-void
.end method

.method public onAttachStateChanged(I)V
    .locals 4

    .line 2031
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2032
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2033
    return-void
.end method

.method public onAttachStopped(I)V
    .locals 4

    .line 2025
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xcb

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2026
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2027
    return-void
.end method

.method public onCallIncoming(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3

    .line 2072
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xcc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2073
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2074
    return-void
.end method

.method public onDPDDisconnected()V
    .locals 2

    .line 2105
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2106
    return-void
.end method

.method public onMediaQualityChanged(ZIII)V
    .locals 1

    .line 2091
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsServiceListenerEx;->onMediaQualityChanged(ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    :cond_0
    goto :goto_0

    .line 2095
    :catch_0
    move-exception p1

    .line 2096
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2098
    :goto_0
    return-void
.end method

.method public onNoRtpReceived(Z)V
    .locals 3

    .line 2112
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    .line 2113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2112
    const/16 v1, 0xd2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2113
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2114
    return-void
.end method

.method public onRegisterStateChanged(II)V
    .locals 3

    .line 2037
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2038
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2037
    const/16 v1, 0xcf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2039
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2040
    return-void
.end method

.method public onReregisterFinished(ZI)V
    .locals 3

    .line 2044
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    .line 2045
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2044
    const/16 v1, 0xce

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2045
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2046
    return-void
.end method

.method public onResetFinished(II)V
    .locals 3

    .line 2057
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2058
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2059
    return-void
.end method

.method public onResetStarted()V
    .locals 2

    .line 2051
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2052
    return-void
.end method

.method public onRtpReceived(Z)V
    .locals 3

    .line 2117
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    .line 2118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2117
    const/16 v1, 0xd4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2118
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2119
    return-void
.end method

.method public onSOSAttachStart(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1

    .line 2130
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2131
    return-void
.end method

.method public onSOSAttachStopped(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1

    .line 2134
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2135
    return-void
.end method

.method public onUnsolicitedUpdate(I)V
    .locals 3

    .line 2123
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2124
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2125
    return-void
.end method

.method public onUpdateDRStateFinished()V
    .locals 2

    .line 2064
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$MyVoWifiCallback;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsHandler;

    move-result-object v0

    const/16 v1, 0xd5

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService$ImsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2065
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2066
    return-void
.end method
