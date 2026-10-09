.class Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;
.super Ljava/lang/Object;
.source "CountryCodeHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->getCountry(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

.field final synthetic val$listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->val$listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Get country, and the location changed, but location is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->removeMessages(I)V

    .line 143
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get country, and the current location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {v2}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmContext(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 148
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 147
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    .line 149
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success to get the country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    move-result-object v1

    new-instance v2, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;

    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->val$listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    invoke-direct {v2, v0, p1, p0, v3}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;-><init>(ZLjava/lang/String;Landroid/location/LocationListener;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 155
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {v1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to get the country as it is empty."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Can not get the address from the location."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    goto :goto_1

    .line 163
    :catch_0
    move-exception p1

    .line 164
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get country from the location as catch the ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    move-result-object p1

    new-instance v1, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;

    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->val$listener:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;

    invoke-direct {v1, p0, v2}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$LocationResult;-><init>(Landroid/location/LocationListener;Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;->-$$Nest$fgetmHandler(Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper;)Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 133
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 128
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 123
    return-void
.end method
