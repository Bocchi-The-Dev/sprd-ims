.class Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private mRotateRetryTimes:I

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/os/Looper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    const/4 p1, 0x0

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->mRotateRetryTimes:I

    .line 89
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 93
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/content/Context;

    move-result-object v0

    monitor-enter v0

    .line 96
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 236
    :pswitch_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v1, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->setPauseImage(Landroid/net/Uri;)I

    goto/16 :goto_2

    .line 221
    :pswitch_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 222
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Failed to stop remote render, display surface is null."

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto/16 :goto_2

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->stopRemoteRender(Landroid/view/Surface;Z)I

    move-result v1

    .line 227
    if-ne v1, v6, :cond_1

    .line 229
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V

    goto/16 :goto_2

    .line 231
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Can not stop remote render now."

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto/16 :goto_2

    .line 193
    :pswitch_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 194
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "The camera is null, needn\'t request camera capability."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto/16 :goto_2

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$mgetCameraCapabilities(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$misLandscape(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "The current orientation is 90 or 270, adjest capability."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v7, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 203
    invoke-virtual {v1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v1

    invoke-direct {v7, v8, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    move-object v1, v7

    .line 206
    :cond_3
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 207
    invoke-static {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$mcameraCapabilitiesEquals(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/telecom/VideoProfile$CameraCapabilities;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 216
    :cond_4
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "The old camera capabilities is same as the new one."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    goto/16 :goto_2

    .line 208
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 209
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Change the camera capability: width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 210
    invoke-virtual {v1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 211
    invoke-virtual {v1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 214
    :cond_6
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmCameraCapabilities(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_2

    .line 173
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    .line 174
    if-eqz v1, :cond_11

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto/16 :goto_2

    .line 176
    :cond_7
    nop

    .line 178
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$mgetVideoQualityLevel(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)F

    move-result v7

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/Utilities;->findVideoQuality(F)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    move-result-object v7

    .line 179
    if-eqz v7, :cond_8

    .line 180
    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v9}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_width:I

    iget v11, v7, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_height:I

    iget v7, v7, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_frameRate:I

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCapture(Ljava/lang/String;III)I

    move-result v7

    and-int/2addr v7, v6

    goto :goto_1

    .line 179
    :cond_8
    move v7, v6

    .line 183
    :goto_1
    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v9}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startLocalRender(Landroid/view/Surface;Ljava/lang/String;)I

    move-result v8

    and-int/2addr v7, v8

    .line 185
    if-ne v7, v6, :cond_9

    .line 186
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V

    goto/16 :goto_2

    .line 188
    :cond_9
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Can not set the preview surface now."

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto/16 :goto_2

    .line 164
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    .line 165
    if-nez v1, :cond_a

    goto/16 :goto_2

    .line 167
    :cond_a
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startRemoteRender(Landroid/view/Surface;)I

    move-result v7

    if-ne v7, v6, :cond_11

    .line 168
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V

    goto/16 :goto_2

    .line 159
    :pswitch_5
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 160
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    move-result-object v1

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    goto/16 :goto_2

    .line 129
    :pswitch_6
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 130
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Camera already stopped, do nothing."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto/16 :goto_2

    .line 134
    :cond_b
    nop

    .line 135
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->stopLocalRender(Landroid/view/Surface;Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, v6

    .line 136
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->stopCamera()I

    move-result v7

    and-int/2addr v1, v7

    .line 137
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->stopCapture(Ljava/lang/String;)I

    move-result v7

    and-int/2addr v1, v7

    .line 139
    if-nez v1, :cond_c

    .line 143
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v7, "The camera can not stopped now, please check the reason."

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_c
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmCameraCapabilities(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 149
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmPreviewSurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/view/Surface;)V

    .line 152
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmOrientationListener(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->disable()V

    .line 153
    goto/16 :goto_2

    .line 117
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 118
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->startCamera(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_d

    .line 119
    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 125
    :cond_d
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmOrientationListener(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->enable()V

    .line 126
    goto/16 :goto_2

    .line 98
    :pswitch_8
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handle the rotate message, the device orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", the angle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 101
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v8

    iget-object v9, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v9}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->localRenderRotate(Ljava/lang/String;II)I

    .line 103
    :cond_e
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 104
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v1

    iget-object v7, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->remoteRenderRotate(I)I

    .line 107
    :cond_f
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCameraId(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDisplaySurface(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 109
    iput v4, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->mRotateRetryTimes:I

    goto :goto_2

    .line 110
    :cond_10
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->mRotateRetryTimes:I

    const/4 v7, 0x5

    if-ge v1, v7, :cond_11

    .line 111
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;

    move-result-object v1

    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v4, v7, v8}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    iget v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->mRotateRetryTimes:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->mRotateRetryTimes:I

    .line 240
    :cond_11
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 281
    :pswitch_9
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {p1, v1, v5, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 285
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendModifyResponse(I)I

    goto :goto_3

    .line 265
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 266
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {v0, v6, p1, p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 270
    nop

    .line 271
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p1

    .line 272
    if-eqz p1, :cond_12

    .line 273
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallType(I)V

    goto :goto_3

    .line 275
    :cond_12
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->updateCallType(I)V

    .line 277
    goto :goto_3

    .line 255
    :pswitch_b
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendModifyResponse(I)I

    move-result p1

    .line 256
    if-nez p1, :cond_13

    .line 257
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not send the modify response now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {p1, v3, v5, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 261
    :cond_13
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1, v4}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmWaitForModifyRequest(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Z)V

    .line 262
    goto :goto_3

    .line 244
    :pswitch_c
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmCallSession(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->sendModifyRequest(I)I

    move-result p1

    if-nez p1, :cond_14

    .line 245
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not send the modify request now."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-virtual {p1, v3, v5, v5}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_3

    .line 250
    :cond_14
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyHandler;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1, v6}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmWaitForModifyResponse(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Z)V

    .line 252
    nop

    .line 289
    :goto_3
    return-void

    .line 240
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
