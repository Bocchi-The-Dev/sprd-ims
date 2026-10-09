.class Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;
.super Ljava/lang/Object;
.source "ImsService.java"

# interfaces
.implements Lcom/spreadtrum/ims/ImsServiceImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoLTERegisterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterStateChange(I)V
    .locals 10

    .line 2144
    const-string v0, " service.isImsRegistered():"

    const-string v1, " mIsCalling:"

    :try_start_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2145
    if-nez v2, :cond_0

    .line 2146
    const-string p1, "VoLTERegisterListener service is null"

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2147
    return-void

    .line 2149
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoLTERegisterListener-> mFSR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v4, v4, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volteRegistered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    .line 2152
    invoke-static {v4, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$misVoLTERegisted(Lcom/spreadtrum/ims/ImsService;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2154
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsLoggingIn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsPRegVoLTE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2149
    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    .line 2158
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    goto/16 :goto_4

    .line 2166
    :cond_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2167
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2171
    :cond_2
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    .line 2172
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    goto :goto_0

    .line 2182
    :cond_3
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterStateOld()Z

    move-result v3

    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v6

    if-eq v3, v6, :cond_5

    .line 2183
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVolteRegisterStateOld(Z)V

    .line 2185
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2186
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    goto :goto_1

    .line 2175
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/spreadtrum/ims/ImsServiceImpl;->setVolteRegisterStateOld(Z)V

    .line 2176
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2177
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2191
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    if-ne v3, p1, :cond_e

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v3, :cond_e

    .line 2194
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v3

    const/16 v6, 0x65

    const/16 v7, 0x64

    const/4 v8, 0x0

    if-eqz v3, :cond_b

    .line 2195
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v3, v3, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-eq v3, v6, :cond_9

    .line 2196
    :cond_6
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2197
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v3

    sget-object v9, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;->DISCONNECTED:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;

    invoke-virtual {v3, v9}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->resetAll(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$WifiState;)V

    goto :goto_2

    .line 2198
    :cond_7
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2199
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deregister()V

    .line 2200
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->deattach()V

    .line 2201
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmWifiRegistered(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2205
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v3, p1}, Lcom/spreadtrum/ims/ImsService;->updateImsFeature(I)V

    .line 2207
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2209
    :cond_9
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2210
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v3, v7, :cond_d

    .line 2211
    const-string v3, "VoLTERegisterListener -> operationSuccessed -> IMS_OPERATION_SWITCH_TO_VOLTE"

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2212
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v3

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v7}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v7

    iget v7, v7, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    .line 2213
    invoke-interface {v3, v7, v5}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationSuccessed(II)V

    .line 2216
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V

    goto :goto_3

    .line 2219
    :cond_a
    const-string v3, "VoLTERegisterListener -> operationSuccessed, mImsServiceListenerEx is null!"

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogw(Ljava/lang/String;)V

    goto :goto_3

    .line 2221
    :cond_b
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2222
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v3

    iget v3, v3, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v3, v7, :cond_d

    .line 2223
    const-string v3, "VoLTERegisterListener -> operationFailed -> IMS_OPERATION_SWITCH_TO_VOLTE"

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2224
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceListenerEx(Lcom/spreadtrum/ims/ImsService;)Lcom/android/ims/internal/IImsServiceListenerEx;

    move-result-object v3

    iget-object v7, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v7}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v7

    iget v7, v7, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mRequestId:I

    const-string v9, "VoLTE register failed"

    .line 2225
    invoke-interface {v3, v7, v9, v5}, Lcom/android/ims/internal/IImsServiceListenerEx;->operationFailed(ILjava/lang/String;I)V

    .line 2229
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V

    .line 2230
    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;Z)V

    goto :goto_3

    .line 2233
    :cond_c
    const-string v3, "VoLTERegisterListener -> operationFailed, mImsServiceListenerEx is null!"

    invoke-static {v3}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogw(Ljava/lang/String;)V

    .line 2235
    :cond_d
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoLTERegisterListener-> mPPdnOk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mIsCPImsPdnActived:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsCPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v3, v3, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2240
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsCPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v1

    iget v1, v1, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    if-ne v1, v6, :cond_e

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    iget-boolean v1, v1, Lcom/spreadtrum/ims/ImsService;->mIsCalling:Z

    if-nez v1, :cond_e

    .line 2245
    const-string v1, "VoLTERegisterListener -> ACTION_START_HANDOVER, clear mFSR"

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2246
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1, v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V

    .line 2247
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsPendingRegisterVolte(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2250
    :cond_e
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mgetImsFeature(Lcom/spreadtrum/ims/ImsService;I)I

    move-result v1

    .line 2251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoLTERegisterListener-> currentImsFeature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " serviceId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2253
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2251
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 2256
    goto :goto_5

    .line 2159
    :cond_f
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoLTERegisterListener-> pending status service.getVolteRegisterState():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2160
    invoke-virtual {v2}, Lcom/spreadtrum/ims/ImsServiceImpl;->getVolteRegisterState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mIsVolteCall:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mIsWifiCalling:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsWifiCalling(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2159
    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    return-void

    .line 2254
    :catch_0
    move-exception p1

    .line 2255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2257
    :goto_5
    return-void
.end method

.method public onSessionEmpty(I)V
    .locals 9

    .line 2261
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2263
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/ImsService;)I

    move-result v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v2

    const-string v3, " mIsVolteCall:"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_f

    .line 2265
    const-string v1, " mIsVowifiCall:"

    if-eqz v0, :cond_d

    .line 2266
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2267
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVowifiSessionListEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2268
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    const/4 v7, 0x2

    invoke-static {v2, v7}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmCallEndType(Lcom/spreadtrum/ims/ImsService;I)V

    .line 2270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSessionEmpty-> mFSR:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " mInCallHOF"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " mIsPRegVowifi: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " mIsAPImsPdnActived: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsAPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " mIsCPImsPdnActived: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v8}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsCPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " impl.isImsRegistered(): "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2278
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2270
    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2279
    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isImsRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsAPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsCPImsPdnActived(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2281
    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->enableImsWhenPDNReady()V

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mEventCode:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mServiceId:I

    if-ne p1, v0, :cond_6

    .line 2286
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;)I

    move-result v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v2

    iget v2, v2, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-eq v0, v2, :cond_2

    .line 2287
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-ne v0, v7, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;Z)V

    goto :goto_0

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v0, :cond_2

    .line 2290
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2293
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    const/4 v2, 0x0

    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 2296
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2297
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmWifiService(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl;->register()V

    .line 2298
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2299
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V

    .line 2301
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v6}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsPendingRegisterVowifi(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2303
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSessionEmpty-> mPendingAttachVowifiSuccess:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " mPPdnOk:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " mIsLoggingIn:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v5}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsLoggingIn(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;)Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;

    move-result-object v0

    iget v0, v0, Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;->mTargetType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2313
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmFeatureSwitchRequest(Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsService$ImsServiceRequest;)V

    .line 2314
    const-string v0, "onSessionEmpty-> This is volte call,so mFSR has been emptyed."

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2317
    :cond_6
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$mgetImsFeature(Lcom/spreadtrum/ims/ImsService;I)I

    move-result v0

    .line 2318
    if-ne v0, v4, :cond_7

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2319
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSessionEmpty->currentImsFeature:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0, v6}, Lcom/spreadtrum/ims/ImsService;->updateInCallState(Z)V

    .line 2323
    :cond_8
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;I)V

    .line 2324
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingAttachVowifiSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPendingActivePdnSuccess(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2326
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    sget-object v2, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {v0, v2}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2329
    :cond_9
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2330
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v6}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;Z)V

    goto :goto_1

    .line 2331
    :cond_a
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2332
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v6}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsVolteCall(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2335
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2336
    const-string v0, "onSessionEmpty->reset mVoWifiSOSAttached"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2337
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0, v6}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmVoWifiSOSAttached(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2340
    :cond_c
    goto :goto_2

    .line 2342
    :cond_d
    const-string v0, "onSessionEmpty->ImsServiceImpl is null"

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2345
    :cond_e
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEmpty->serviceId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "mIsVolteCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVowifiCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "mInCallHOF: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmInCallHandoverFeature(Lcom/spreadtrum/ims/ImsService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    goto :goto_3

    .line 2351
    :cond_f
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmImsServiceImplArray(Lcom/spreadtrum/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmPhoneCount(Lcom/spreadtrum/ims/ImsService;)I

    move-result v2

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsRegister;->getPrimaryCard(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 2352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSessionEmpty-> serviceId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  impl: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  implPrimay: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 2353
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->isVolteSessionListEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2354
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmIsVolteCall(Lcom/spreadtrum/ims/ImsService;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2355
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1, v6}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmIsVolteCall(Lcom/spreadtrum/ims/ImsService;Z)V

    .line 2356
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;->CALL_NONE:Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsService;->updateCallRatState(Lcom/spreadtrum/ims/vowifi/VoWifiServiceImpl$CallRatState;)V

    .line 2362
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fgetmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;)I

    move-result p1

    if-eq p1, v4, :cond_11

    .line 2363
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-static {p1, v4}, Lcom/spreadtrum/ims/ImsService;->-$$Nest$fputmMakeCallPrimaryCardServiceId(Lcom/spreadtrum/ims/ImsService;I)V

    .line 2364
    :cond_11
    return-void
.end method

.method public onVoWifiAttachStateChange(II)V
    .locals 1

    .line 2369
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsService$VoLTERegisterListener;->this$0:Lcom/spreadtrum/ims/ImsService;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsService;->notifyVoWifiAttachStateChange(II)V

    .line 2370
    return-void
.end method
