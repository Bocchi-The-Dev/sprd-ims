.class public Lcom/spreadtrum/ims/ImsAdapter;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-class v0, Lcom/spreadtrum/ims/ImsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsAdapter;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/spreadtrum/ims/ImsAdapter;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 0

    .line 288
    return-void
.end method

.method public addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    .line 57
    return-void
.end method

.method public addImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 0

    .line 248
    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 1

    .line 157
    const/4 v0, -0x1

    return v0
.end method

.method public changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 380
    const/4 p1, -0x1

    return p1
.end method

.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    .line 46
    const/4 p1, 0x0

    return-object p1
.end method

.method public createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    .line 42
    const/4 p1, 0x0

    return-object p1
.end method

.method public createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 0

    .line 51
    const/4 p1, 0x0

    return-object p1
.end method

.method public disableIms(II)V
    .locals 0

    .line 98
    return-void
.end method

.method public enableIms(II)V
    .locals 0

    .line 94
    return-void
.end method

.method public getAliveCallJitter()I
    .locals 1

    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method public getAliveCallLose()I
    .locals 1

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method public getAliveCallRtt()I
    .locals 1

    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public getCLIRStatus(I)I
    .locals 0

    .line 257
    const/4 p1, -0x1

    return p1
.end method

.method public getCallForwardingOption(IIILjava/lang/String;)I
    .locals 0

    .line 370
    const/4 p1, -0x1

    return p1
.end method

.method public getCallType()I
    .locals 1

    .line 224
    const/4 v0, -0x1

    return v0
.end method

.method public getCallWaitingStatus(I)V
    .locals 0

    .line 271
    return-void
.end method

.method public getCurLocalAddress()Ljava/lang/String;
    .locals 1

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurPcscfAddress()Ljava/lang/String;
    .locals 1

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentImsFeature()I
    .locals 1

    .line 123
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentImsFeatureForPhone(I)I
    .locals 0

    .line 128
    const/4 p1, -0x1

    return p1
.end method

.method public getCurrentImsVideoState()I
    .locals 1

    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getImsCNIInfor()V
    .locals 0

    .line 284
    return-void
.end method

.method public getImsConfig(I)Lcom/spreadtrum/ims/ImsConfigImpl;
    .locals 0

    .line 84
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImsPcscfAddress()Ljava/lang/String;
    .locals 1

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegAddress()Ljava/lang/String;
    .locals 1

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .locals 2

    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPAU(I)Ljava/lang/String;
    .locals 0

    .line 238
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRegistration(I)Lcom/spreadtrum/ims/ImsRegistrationImpl;
    .locals 0

    .line 79
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSipTransport(I)Lcom/spreadtrum/ims/sip/SipTransportImpl;
    .locals 0

    .line 89
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVolteRegisterState()I
    .locals 1

    .line 214
    const/4 v0, -0x1

    return v0
.end method

.method public getVolteRegisterStateForPhone(I)I
    .locals 0

    .line 219
    const/4 p1, -0x1

    return p1
.end method

.method public isSupportMobike()Z
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public isVoWifiAttached()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0

    .line 297
    return-void
.end method

.method public notifyImsServiceReadyForFeatureCreation()V
    .locals 0

    .line 71
    return-void
.end method

.method public notifyMmsTranportStateChange(IZ)V
    .locals 0

    .line 355
    return-void
.end method

.method public notifyNetworkUnavailable()V
    .locals 0

    .line 119
    return-void
.end method

.method public notifySrvccCallInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;)V"
        }
    .end annotation

    .line 229
    return-void
.end method

.method public notifyVideoCapabilityChange()V
    .locals 0

    .line 267
    return-void
.end method

.method public notifyVoWiFiAttachState(II)V
    .locals 0

    .line 329
    return-void
.end method

.method public notifyVoWiFiAvailable(I)V
    .locals 0

    .line 311
    return-void
.end method

.method public notifyVoWiFiUnavailable(I)V
    .locals 0

    .line 315
    return-void
.end method

.method public onAuthenticationRequest(IIILjava/lang/String;[BZ)Lcom/android/ims/internal/GbaAuthResult;
    .locals 0

    .line 334
    const/4 p1, 0x0

    return-object p1
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 0

    .line 339
    return-void
.end method

.method public registerIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 0

    .line 347
    return-void
.end method

.method public registerforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 0

    .line 163
    return-void
.end method

.method public registerforVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 0

    .line 320
    return-void
.end method

.method public registerforVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 0

    .line 302
    return-void
.end method

.method public releaseVoWifiResource()I
    .locals 1

    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public removeImsEventListener(Lcom/android/ims/internal/IImsEventListener;)V
    .locals 0

    .line 292
    return-void
.end method

.method public removeImsFeature(IIZ)V
    .locals 0

    .line 75
    return-void
.end method

.method public removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    .line 62
    return-void
.end method

.method public removeImsPdnStateListener(ILcom/android/ims/internal/IImsPdnStateListener;)V
    .locals 0

    .line 253
    return-void
.end method

.method public setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 364
    const/4 p1, -0x1

    return p1
.end method

.method public setImsServiceListener(Lcom/android/ims/internal/IImsServiceListenerEx;)V
    .locals 0

    .line 138
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 0

    .line 38
    return-void
.end method

.method public setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 0

    .line 375
    return-void
.end method

.method public setMonitorPeriodForNoData(I)V
    .locals 0

    .line 181
    return-void
.end method

.method public setVoWifiUnavailable(IZ)I
    .locals 0

    .line 147
    const/4 p1, -0x1

    return p1
.end method

.method public setVowifiRegister(I)V
    .locals 0

    .line 243
    return-void
.end method

.method public showVowifiNotification()V
    .locals 0

    .line 185
    return-void
.end method

.method public startHandover(I)I
    .locals 0

    .line 114
    const/4 p1, -0x1

    return p1
.end method

.method public startMobike()V
    .locals 0

    .line 275
    return-void
.end method

.method public switchImsFeature(I)I
    .locals 0

    .line 109
    const/4 p1, -0x1

    return p1
.end method

.method public terminateAllCalls(I)V
    .locals 0

    .line 172
    return-void
.end method

.method public unregisterIwlanAttachActionListener(Lcom/android/ims/internal/IIwlanAttachActionListener;)V
    .locals 0

    .line 343
    return-void
.end method

.method public unregisterIwlanMmsActionListener(Lcom/android/ims/internal/IIwlanMmsActionListener;)V
    .locals 0

    .line 351
    return-void
.end method

.method public unregisterVoWiFiAttachStateChanged(Lcom/android/ims/internal/IVoWiFiAttachCallback;)V
    .locals 0

    .line 325
    return-void
.end method

.method public unregisterVoWiFiAvailabilityChanged(Lcom/android/ims/internal/IVoWiFiAvailabilityCallback;)V
    .locals 0

    .line 307
    return-void
.end method

.method public unregisterforImsRegisterStateChanged(Lcom/android/ims/internal/IImsRegisterListener;)V
    .locals 0

    .line 168
    return-void
.end method

.method public updateCLIRStatus(I)I
    .locals 0

    .line 262
    const/4 p1, -0x1

    return p1
.end method
