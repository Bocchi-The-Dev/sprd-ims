.class Lcom/spreadtrum/ims/ImsConfigImpl$1;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsConfigImpl;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 645
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged()->key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mImsServiceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vt_resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v2}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_0

    .line 647
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    iget v1, v1, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultVtResolution:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fputmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;I)V

    .line 648
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object p1

    const/16 p2, 0x69

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->removeMessages(I)V

    .line 649
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object p1

    invoke-virtual {p1, p2, v2, v3}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 650
    invoke-static {}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSharedPreferenceChanged()->mCameraResolution:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmCameraResolution(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_over_ip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v4}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 652
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmImsServiceId(Lcom/spreadtrum/ims/ImsConfigImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    iget v1, v1, Lcom/spreadtrum/ims/ImsConfigImpl;->mDefaultSmsOverIp:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fputmSmsOverIp(Lcom/spreadtrum/ims/ImsConfigImpl;I)V

    .line 654
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-virtual {p1, p2}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->removeMessages(I)V

    .line 655
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsConfigImpl$1;->this$0:Lcom/spreadtrum/ims/ImsConfigImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsConfigImpl;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/ImsConfigImpl;)Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;

    move-result-object p1

    invoke-virtual {p1, p2, v2, v3}, Lcom/spreadtrum/ims/ImsConfigImpl$ImsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 657
    :cond_1
    :goto_0
    return-void
.end method
