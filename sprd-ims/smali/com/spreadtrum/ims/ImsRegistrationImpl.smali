.class public Lcom/spreadtrum/ims/ImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRegistrationImpl.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

.field private mPhoneId:I

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/spreadtrum/ims/ImsRegistrationImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    .line 56
    iput p1, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mPhoneId:I

    .line 57
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mServiceId:I

    .line 58
    iput-object p2, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 60
    iput-object p4, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    .line 61
    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mServiceId:I

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .line 90
    sget-object v0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public notifyImsRegistration(ZZ)V
    .locals 0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x1

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->onRegistered(I)V

    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 70
    :goto_1
    return-void
.end method

.method public notifySubscriberAssociatedUriChanged([Ljava/lang/String;)V
    .locals 4

    .line 73
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/net/Uri;

    .line 78
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 79
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySubscriberAssociatedUriChanged-uris["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 83
    return-void

    .line 74
    :cond_2
    :goto_1
    const-string p1, "notifySubscriberAssociatedUriChanged-uris is null!"

    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/ImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->triggerFullNetworkRegistration(ILjava/lang/String;Landroid/os/Message;)V

    .line 53
    :cond_0
    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->triggerSipDelegateDeregistration(Landroid/os/Message;)V

    .line 36
    :cond_0
    return-void
.end method

.method public updateSipDelegateRegistration()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsService:Lcom/spreadtrum/ims/ImsService;

    iget v1, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsService;->getSipTransport(I)Lcom/spreadtrum/ims/sip/SipTransportImpl;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRegistrationImpl;->mImsServiceImpl:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ImsServiceImpl;->getImsRadioInterface()Lcom/spreadtrum/ims/ImsRadioInterface;

    move-result-object v1

    .line 42
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/spreadtrum/ims/sip/SipTransportImpl;->getAllFeatureTags()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->updateSipDelegateRegistration(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 45
    :cond_0
    return-void
.end method
