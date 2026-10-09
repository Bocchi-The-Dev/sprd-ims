.class public Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IwlanDataServiceProvider"
.end annotation


# static fields
.field static final ACTION_DEACTIVATE_DATA:I = 0x2

.field static final ACTION_NONE:I = 0x0

.field static final ACTION_SETUP_DATA_CALL:I = 0x1


# instance fields
.field public mActionType:I

.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanDataService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackMap(Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method private constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;I)V
    .locals 2

    .line 212
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    .line 214
    iput p2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mSlotIndex:I

    .line 215
    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/IwlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    .line 216
    new-instance v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider$1;-><init>(Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/spreadtrum/ims/IwlanDataService;I)V

    iput-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mMessenger:Landroid/os/Messenger;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/IwlanDataService;ILcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/spreadtrum/ims/IwlanDataService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataServiceProvider close, slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 9

    .line 335
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateDataCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 337
    nop

    .line 340
    const/16 v0, 0x65

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 341
    iget-object p2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivateDataCall, invalid cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 342
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 343
    return-void

    .line 349
    :cond_0
    if-eqz p3, :cond_2

    .line 350
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 351
    iget-object v4, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    if-ne p1, v1, :cond_1

    .line 354
    iput v3, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    .line 355
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$misPdnDeactived(Lcom/spreadtrum/ims/IwlanDataService;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 356
    const/4 p1, 0x0

    invoke-static {v2, p1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 357
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 358
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->resetActionType()V

    goto :goto_0

    .line 360
    :cond_1
    if-ne p1, v0, :cond_2

    .line 361
    iget-object v3, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v6, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mMessenger:Landroid/os/Messenger;

    const/4 v7, 0x2

    iget v8, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mSlotIndex:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/unisoc/telephony/RadioInteractor;->deactivateDataCallExt(IILandroid/os/Messenger;II)V

    .line 365
    :cond_2
    :goto_0
    return-void
.end method

.method public getPdnResponse(Z)Landroid/telephony/data/DataCallResponse;
    .locals 13

    .line 174
    new-instance v12, Landroid/telephony/data/DataCallResponse;

    .line 175
    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 174
    return-object v12
.end method

.method public getResponseMessage(I)Landroid/os/Message;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 166
    if-ne v1, p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    goto :goto_0

    .line 170
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isStartPdnActive()Z
    .locals 2

    .line 152
    iget v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStartPdnDeactive()Z
    .locals 2

    .line 156
    iget v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyActionComplete()V
    .locals 6

    .line 181
    nop

    .line 182
    nop

    .line 184
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActionComplete slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIwlanPdnState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    iget-object v2, v2, Lcom/spreadtrum/ims/IwlanDataService;->mIwlanPdnState:[I

    .line 185
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mActionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->isStartPdnActive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->isStartPdnDeactive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->isStartPdnActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x2

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getResponseMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    const-string v1, "notifyActionComplete\uff0c Can not find msg"

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 195
    return-void

    .line 198
    :cond_2
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->isStartPdnActive()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v5

    invoke-static {v3, v5}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$misPdnActived(Lcom/spreadtrum/ims/IwlanDataService;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getPdnResponse(Z)Landroid/telephony/data/DataCallResponse;

    move-result-object v2

    .line 201
    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->isStartPdnDeactive()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v5

    invoke-static {v3, v5}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$misPdnDeactived(Lcom/spreadtrum/ims/IwlanDataService;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    move-object v2, v4

    goto :goto_1

    .line 206
    :cond_4
    move v1, v2

    move-object v2, v4

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    .line 207
    :cond_5
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 206
    :goto_2
    invoke-static {v0, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 208
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->resetActionType()V

    .line 210
    return-void

    .line 188
    :cond_6
    :goto_3
    return-void
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDataCallList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 400
    nop

    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 405
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    .line 406
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$misPdnDeactived(Lcom/spreadtrum/ims/IwlanDataService;I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getPdnResponse(Z)Landroid/telephony/data/DataCallResponse;

    move-result-object v2

    const/4 v3, 0x0

    .line 405
    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 407
    iget-object v2, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 410
    :cond_0
    return-void
.end method

.method public resetActionType()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    .line 161
    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 385
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataProfile "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "callback:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 386
    nop

    .line 389
    if-eqz p3, :cond_0

    .line 390
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 391
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 392
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 395
    :cond_0
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setInitialAttachApn "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "callback:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 371
    nop

    .line 374
    if-eqz p3, :cond_0

    .line 375
    iget-object p1, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 376
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 377
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    :cond_0
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 14

    .line 286
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p11

    iget-object v3, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDataCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 288
    nop

    .line 289
    nop

    .line 292
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    .line 293
    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataCall, invalid accessNetworkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2, v3, v4}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 296
    return-void

    .line 299
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v5

    .line 300
    iget-object v6, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupDataCall, apnTypeBitmask:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 301
    and-int/lit8 v6, v5, 0x40

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x1

    if-ne v6, v8, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v7

    .line 302
    :goto_0
    and-int/lit8 v8, v5, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    move v7, v9

    .line 304
    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 305
    iget-object v0, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataCall, invalid apn type:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanDataService;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2, v3, v4}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 308
    return-void

    .line 313
    :cond_3
    if-eqz v2, :cond_5

    .line 314
    iget-object v3, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 315
    iget-object v5, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    if-eqz v6, :cond_4

    .line 318
    iput v9, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mActionType:I

    .line 319
    iget-object v1, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanDataService;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/spreadtrum/ims/IwlanDataService;->-$$Nest$misPdnActived(Lcom/spreadtrum/ims/IwlanDataService;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    invoke-virtual {p0, v9}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->getPdnResponse(Z)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-static {v3, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 321
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 322
    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->resetActionType()V

    goto :goto_1

    .line 324
    :cond_4
    if-eqz v7, :cond_5

    .line 325
    iget-object v2, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v11, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mMessenger:Landroid/os/Messenger;

    const/4 v12, 0x1

    iget v13, v0, Lcom/spreadtrum/ims/IwlanDataService$IwlanDataServiceProvider;->mSlotIndex:I

    move-object v0, v2

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Lcom/android/unisoc/telephony/RadioInteractor;->setupDataCallExt(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Messenger;II)V

    .line 331
    :cond_5
    :goto_1
    return-void
.end method
