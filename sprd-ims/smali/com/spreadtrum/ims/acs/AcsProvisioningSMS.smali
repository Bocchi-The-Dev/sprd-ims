.class public Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;
.super Ljava/lang/Object;
.source "AcsProvisioningSMS.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AcsProvisioningSMS"

.field private static final OTP_SMS_ENCODING_FORMAT:Ljava/lang/String; = "UCS2"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

.field private mOtpSmsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmManager(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    .line 55
    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method protected static generateSmsPortForProvisioning()Ljava/lang/String;
    .locals 2

    .line 62
    nop

    .line 63
    nop

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 165
    const-string v0, "AcsProvisioningSMS"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public registerSmsProvisioningReceiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->unregisterSmsProvisioningReceiver()V

    .line 70
    const-string v0, "Registering SMS provider receiver in port: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->log(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;

    invoke-direct {v0, p0, p2}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mOtpSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v0, "sms"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    const-string v0, "*"

    invoke-virtual {p2, v0, p1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 p1, 0x3e8

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 147
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mOtpSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method public unregisterSmsProvisioningReceiver()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mOtpSmsReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const-string v0, "Unregistering SMS provider receiver"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->log(Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mOtpSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 161
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningSMS;->mOtpSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    return-void
.end method
