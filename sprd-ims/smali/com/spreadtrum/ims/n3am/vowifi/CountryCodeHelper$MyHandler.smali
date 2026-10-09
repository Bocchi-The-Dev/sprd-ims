.class Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;
.super Landroid/os/Handler;
.source "CountryCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;

    .line 52
    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object p1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmLocationMgr(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_locationListener:Landroid/location/LocationListener;

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 62
    :cond_1
    iget-object p1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    if-eqz p1, :cond_3

    .line 63
    iget-boolean p1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_success:Z

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    iget-object v0, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_country:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;->onLoadComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, v0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;->_listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    invoke-interface {p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;->onLoadFailed()V

    .line 71
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
