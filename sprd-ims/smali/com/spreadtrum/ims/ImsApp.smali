.class public Lcom/spreadtrum/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIMSLogController:Lcom/spreadtrum/ims/IMSLogController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/spreadtrum/ims/ImsApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ImsApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    nop

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 32
    :goto_0
    nop

    .line 33
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_0
    const-string v0, ""

    .line 37
    :goto_1
    new-instance v1, Lcom/spreadtrum/ims/IMSLogController;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spreadtrum/ims/IMSLogController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spreadtrum/ims/ImsApp;->mIMSLogController:Lcom/spreadtrum/ims/IMSLogController;

    .line 39
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony.ims"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    sget-object v0, Lcom/spreadtrum/ims/ImsApp;->TAG:Ljava/lang/String;

    const-string v1, "don\'t support telephony ims feature "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 44
    :cond_1
    sget-object v1, Lcom/spreadtrum/ims/ImsApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsApp Boot Successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isImsEnabledBySystemProperties(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-static {p0}, Lcom/spreadtrum/ims/ImsConfigImpl;->isVoWiFiEnabledByBoard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    const-string v0, "Could Not Start Ims Service because volte disabled by system properties!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    return-void

    .line 54
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/spreadtrum/ims/ImsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/spreadtrum/ims/ImsAdapterService;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spreadtrum/ims/ImsApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    .line 57
    if-nez v2, :cond_4

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could Not Start Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 60
    :cond_4
    const-string v0, "ImsService Boot Successfully!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_2
    return-void
.end method
