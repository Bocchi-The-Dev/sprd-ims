.class Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "IwlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IwlanNetworkServiceProvider"
.end annotation


# instance fields
.field mImsManager:Lcom/android/ims/ImsManager;

.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanNetworkService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/IwlanNetworkService;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 116
    invoke-virtual {p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->mImsManager:Lcom/android/ims/ImsManager;

    .line 117
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " close!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanNetworkService;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetworkRegistrationInfo,domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " callback:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanNetworkService;Ljava/lang/String;)V

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->mImsManager:Lcom/android/ims/ImsManager;

    .line 134
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 139
    iget-object v3, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v3}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmIsIwlanRegistered(Lcom/spreadtrum/ims/IwlanNetworkService;)[Z

    move-result-object v3

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->getSlotIndex()I

    move-result v4

    aget-boolean v3, v3, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 140
    const/16 v3, 0x12

    goto :goto_0

    .line 141
    :cond_1
    move v3, v4

    .line 139
    :goto_0
    invoke-virtual {v1, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object p1

    .line 143
    iget-object v1, p0, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->this$0:Lcom/spreadtrum/ims/IwlanNetworkService;

    invoke-static {v1}, Lcom/spreadtrum/ims/IwlanNetworkService;->-$$Nest$fgetmIsIwlanRegistered(Lcom/spreadtrum/ims/IwlanNetworkService;)[Z

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanNetworkService$IwlanNetworkServiceProvider;->getSlotIndex()I

    move-result v3

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move v0, v4

    .line 143
    :goto_1
    invoke-virtual {p1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    .line 147
    invoke-virtual {p2, v4, p1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    .line 148
    return-void
.end method
