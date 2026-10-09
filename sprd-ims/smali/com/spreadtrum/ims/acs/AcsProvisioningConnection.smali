.class public Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;
.super Ljava/lang/Object;
.source "AcsProvisioningConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AcsProvisioningConnection"


# instance fields
.field private mConnectionManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkStateListener:Landroid/content/BroadcastReceiver;

.field private mProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

.field private mWifiDisablingListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProvisioningManager(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)Lcom/spreadtrum/ims/acs/AcsProvisioningManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mProvisioningManager:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    .line 36
    iput-object p2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mContext:Landroid/content/Context;

    .line 37
    nop

    .line 38
    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 39
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 165
    const-string v0, "AcsProvisioningConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionMngr()Landroid/net/ConnectivityManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mConnectionManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public registerNetworkStateListener()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "Network state listener already registered"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_0
    const-string v0, "Registering network state listener"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public registerWifiDisablingListener()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "WIFI disabling listener already registered"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_0
    const-string v0, "Registering WIFI disabling listener"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection$2;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method protected unregisterNetworkStateListener()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Unregistering network state listener"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 109
    :cond_0
    return-void
.end method

.method public unregisterWifiDisablingListener()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "Unregistering WIFI disabling listener"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->log(Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 156
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningConnection;->mWifiDisablingListener:Landroid/content/BroadcastReceiver;

    .line 158
    :cond_0
    return-void
.end method
