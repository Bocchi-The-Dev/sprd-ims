.class Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;
.super Ljava/lang/Object;
.source "VoWifiServiceImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onAliveCallUpdate(Z)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAliveCallUpdate(Z)V

    .line 1348
    :cond_0
    return-void
.end method

.method public onCallEnd(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->onSOSCallTerminated()V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallMgr:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->getCallCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] end, and there isn\'t any other call."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onAllCallsEnd()V

    .line 1317
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-boolean p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mNeedLogoutAfterCall:Z

    if-eqz p1, :cond_1

    .line 1318
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mNeedLogoutAfterCall:Z

    .line 1320
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->-$$Nest$mregisterLogout(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;I)V

    .line 1323
    :cond_1
    return-void
.end method

.method public onCallIncoming(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onCallIncoming(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1303
    :cond_0
    return-void
.end method

.method public onCallRTCPChanged(ZIII)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onMediaQualityChanged(ZIII)V

    .line 1341
    :cond_0
    return-void
.end method

.method public onCallRTPReceived(ZZ)V
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_1

    .line 1328
    if-eqz p2, :cond_0

    .line 1329
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onRtpReceived(Z)V

    goto :goto_0

    .line 1331
    :cond_0
    iget-object p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p2, p2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {p2, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onNoRtpReceived(Z)V

    .line 1334
    :cond_1
    :goto_0
    return-void
.end method

.method public onEnterECBM(Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;)V
    .locals 3

    .line 1352
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter ECBM for the emergency call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;->getCallSession()Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iput-object p1, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mECBMRequest:Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;

    .line 1357
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1359
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v0, "Need enter ECBM, but imsEcbm is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :goto_0
    return-void
.end method

.method public onExitECBM()V
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->getEcbmInterface()Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsEcbmImpl;->isEcbm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Exit ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mTag:Ljava/lang/String;

    const-string v1, "Exit ECBM: But not in Ecbm."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :goto_0
    return-void
.end method

.method public onSRVCCFinished(Z)V
    .locals 3

    .line 1376
    if-eqz p1, :cond_0

    .line 1377
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mHandler:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;

    const/16 v0, 0xe

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1379
    :cond_0
    return-void
.end method

.method public onUnsolicitedRequest(I)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$MyCallListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->mCallback:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;

    invoke-interface {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$VoWifiCallback;->onUnsolicitedUpdate(I)V

    .line 1386
    :cond_0
    return-void
.end method
