.class public Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;
.super Ljava/lang/Object;
.source "CountryCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;,
        Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;,
        Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;
    }
.end annotation


# static fields
.field private static final MSG_GET_COUNTRY_FINISH:I = 0x1

.field private static final MSG_GET_COUNTRY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mMyLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationMgr(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    .line 85
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "LocationHelper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 87
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mMyLooper:Landroid/os/Looper;

    .line 88
    new-instance p1, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mMyLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    .line 89
    return-void
.end method

.method private getBestProvider()Ljava/lang/String;
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    const-string v2, "network"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    .line 196
    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    return-object v2

    .line 200
    :cond_2
    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    .line 201
    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    return-object v2

    .line 205
    :cond_3
    const-string v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    .line 206
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    return-object v2

    .line 210
    :cond_4
    return-object v1

    .line 189
    :cond_5
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Can not find any enabled location provider, return null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;
    .locals 1

    .line 75
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    .line 78
    :cond_0
    sget-object p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->sInstance:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    return-object p0
.end method


# virtual methods
.method public getCountry(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;I)Z
    .locals 10

    .line 101
    sget-object v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->TAG:Ljava/lang/String;

    const-string v1, "Try to get the country from the location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    const-string p1, "Geocoder isn\'t present, can not get the country info."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->getBestProvider()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const-string p1, "Failed to get the enabled best provider, can not get the country."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 119
    :cond_2
    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;-><init>(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V

    .line 175
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mLocationMgr:Landroid/location/LocationManager;

    const-wide/16 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mMyLooper:Landroid/os/Looper;

    move-object v3, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "As get the country, request the location update for provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    const/4 v2, 0x2

    new-instance v3, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;

    invoke-direct {v3, v1, p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;-><init>(Landroid/location/LocationListener;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V

    invoke-virtual {v0, v2, v3}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->mHandler:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    const/4 p1, 0x1

    return p1

    .line 104
    :cond_3
    :goto_0
    const-string p1, "As listener is null or location manager is null, do nothing."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v1
.end method
