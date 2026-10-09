.class public final Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;
.super Ljava/lang/Object;
.source "AcsProvisioningMsisdnInput.java"


# static fields
.field static final EXTRA_MSISDN:Ljava/lang/String; = "msisdn"

.field private static volatile sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;


# instance fields
.field private mMsisdn:Lcom/spreadtrum/ims/acs/ContactId;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;
    .locals 2

    .line 54
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    return-object v0

    .line 57
    :cond_0
    const-class v0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    invoke-direct {v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;-><init>()V

    sput-object v1, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    .line 61
    :cond_1
    sget-object v1, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    monitor-exit v0

    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected displayPopupAndWaitResponse(Landroid/content/Context;Lcom/spreadtrum/ims/acs/ContactId;)Lcom/spreadtrum/ims/acs/ContactId;
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "msisdn"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    :try_start_0
    sget-object p1, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->wait()V

    .line 76
    monitor-exit p1

    .line 79
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :catch_0
    move-exception p1

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->mMsisdn:Lcom/spreadtrum/ims/acs/ContactId;

    return-object p1
.end method

.method protected getMsisdn()Lcom/spreadtrum/ims/acs/ContactId;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->mMsisdn:Lcom/spreadtrum/ims/acs/ContactId;

    return-object v0
.end method

.method protected responseReceived(Lcom/spreadtrum/ims/acs/ContactId;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->sInstance:Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    monitor-enter v0

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->mMsisdn:Lcom/spreadtrum/ims/acs/ContactId;

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
