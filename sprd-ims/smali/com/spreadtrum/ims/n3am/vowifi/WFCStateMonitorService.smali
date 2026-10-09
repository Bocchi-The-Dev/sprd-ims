.class public Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;
.super Landroid/app/Service;
.source "WFCStateMonitorService.java"


# static fields
.field private static final PROP_KEY_CP_VOWIFI:Ljava/lang/String; = "persist.vendor.sys.single.imsstack"

.field private static final TAG:Ljava/lang/String;

.field private static final sVoWiFiServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterReceiver:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->sVoWiFiServices:Ljava/util/ArrayList;

    .line 49
    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/PhoneStateMonitor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v1, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    .line 35
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService$1;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private declared-synchronized clearReceiver()V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized checkWFCState(IZ)V
    .locals 4

    monitor-enter p0

    .line 101
    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    .line 103
    :goto_0
    sget-object v1, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check the WFC enabled: wfcEnabled["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for the phone["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v0, :cond_3

    .line 108
    iget-boolean p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    :cond_1
    sget-object p1, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->sVoWiFiServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 115
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.spreadtrum.ims"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_1

    :cond_2
    goto :goto_2

    .line 119
    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    if-nez p2, :cond_4

    .line 120
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->mRegisterReceiver:Z

    .line 121
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method init(Z)V
    .locals 3

    .line 87
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getPhoneCount(Landroid/content/Context;)I

    move-result p1

    .line 89
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->checkWFCState(IZ)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    goto :goto_1

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getPrimaryCard(Landroid/content/Context;)I

    move-result p1

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->checkWFCState(IZ)V

    .line 95
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitor the WFC mode for primary card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 75
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    const-string v0, "persist.vendor.sys.single.imsstack"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    # [sprd-ims] force the CP-VoWifi monitor up regardless of the
    # persist.vendor.sys.single.imsstack property, which is absent on the
    # LOS20 GSI and used to stopSelf() here, killing the WFC state machine.
    const/4 v0, 0x1

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/Utilities;->isSupportDualVoWifi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->init(Z)V

    .line 60
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "WFCStateMonitorService create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "As CP VoWifi disabled, needn\'t start vowifi monitor."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->stopSelf()V

    .line 65
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/WFCStateMonitorService;->clearReceiver()V

    .line 71
    return-void
.end method
