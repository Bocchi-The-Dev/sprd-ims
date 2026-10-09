.class Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;
.super Ljava/lang/Object;
.source "CountryCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationResult"
.end annotation


# instance fields
.field public _country:Ljava/lang/String;

.field public _listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

.field public _locationListener:Landroid/location/LocationListener;

.field public _success:Z


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_success:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_country:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    .line 217
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    .line 220
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    .line 221
    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    .line 222
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/location/LocationListener;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_success:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_country:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    .line 217
    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    .line 226
    iput-boolean p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_success:Z

    .line 227
    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_country:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    .line 229
    iput-object p4, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    .line 230
    return-void
.end method
