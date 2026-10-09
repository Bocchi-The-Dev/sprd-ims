.class Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;
.super Landroid/os/Handler;
.source "VoWifiCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SRVCCHandler"
.end annotation


# instance fields
.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ims/internal/ImsSrvccCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Landroid/os/Looper;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    .line 195
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    .line 196
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 205
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 266
    :pswitch_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Will handle the SRVCC failed/cancel event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fputmInSRVCC(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Z)V

    .line 270
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 271
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    const/4 v4, 0x2

    .line 273
    :goto_1
    invoke-virtual {v1, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateSRVCCResult(I)I

    .line 274
    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 279
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onSRVCCFinished(Z)V

    goto/16 :goto_6

    .line 223
    :pswitch_1
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Will handle the SRVCC success event."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fputmInSRVCC(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Z)V

    .line 236
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 238
    :try_start_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify the SRVCC call infos, has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmImsServiceEx(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsServiceEx;->notifySrvccCallInfos(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 241
    :catch_0
    move-exception p1

    .line 242
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to sync the infos as catch the exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_2
    goto :goto_3

    .line 245
    :cond_3
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not get the ims ex service."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_3
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 250
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->releaseCall()I

    .line 252
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->processNoResponseAction()V

    .line 254
    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->close()V

    .line 255
    goto :goto_4

    .line 257
    :cond_4
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 261
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$CallListener;->onSRVCCFinished(Z)V

    goto :goto_6

    .line 207
    :pswitch_2
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Will handle the SRVCC start event."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fputmInSRVCC(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;Z)V

    .line 212
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$fgetmSRVCCSessionList(Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    .line 218
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$SRVCCHandler;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->prepareSRVCCSyncInfo(Ljava/util/ArrayList;)V

    .line 219
    goto :goto_5

    .line 221
    :cond_5
    nop

    .line 283
    :cond_6
    :goto_6
    return-void

    .line 201
    :cond_7
    :goto_7
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiCallManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There isn\'t any call, ignore the SRVCC event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
