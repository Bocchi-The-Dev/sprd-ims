.class public Lcom/spreadtrum/ims/vowifi/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/Utilities$Version;,
        Lcom/spreadtrum/ims/vowifi/Utilities$JSONUtils;,
        Lcom/spreadtrum/ims/vowifi/Utilities$FDNHelper;,
        Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;,
        Lcom/spreadtrum/ims/vowifi/Utilities$ProviderUtils;,
        Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;,
        Lcom/spreadtrum/ims/vowifi/Utilities$CallBarringInfo;,
        Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;,
        Lcom/spreadtrum/ims/vowifi/Utilities$ECBMRequest;,
        Lcom/spreadtrum/ims/vowifi/Utilities$EMUtils;,
        Lcom/spreadtrum/ims/vowifi/Utilities$Camera;,
        Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;,
        Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;,
        Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;,
        Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;,
        Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;,
        Lcom/spreadtrum/ims/vowifi/Utilities$SRVCCResult;,
        Lcom/spreadtrum/ims/vowifi/Utilities$SRVCCSyncInfo;,
        Lcom/spreadtrum/ims/vowifi/Utilities$IPVersion;,
        Lcom/spreadtrum/ims/vowifi/Utilities$CallStateForDataRouter;,
        Lcom/spreadtrum/ims/vowifi/Utilities$RegisterType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$S2bType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$Result;,
        Lcom/spreadtrum/ims/vowifi/Utilities$RegisterState;,
        Lcom/spreadtrum/ims/vowifi/Utilities$NativeErrorCode;,
        Lcom/spreadtrum/ims/vowifi/Utilities$VowifiNetworkType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$VolteNetworkType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$CallType;,
        Lcom/spreadtrum/ims/vowifi/Utilities$UnsolicitedCode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final PROP_KEY_ENABLE_SEC_SERVICE:Ljava/lang/String; = "persist.vowifi.sec.ser.enabled"

.field private static final PROP_KEY_SS_CW:Ljava/lang/String; = "gsm.ss.call_waiting"

.field public static final SERVICE_ACTION_CALL:Ljava/lang/String;

.field public static final SERVICE_ACTION_REG:Ljava/lang/String;

.field public static final SERVICE_ACTION_SEC:Ljava/lang/String;

.field public static final SERVICE_ACTION_SMS:Ljava/lang/String;

.field public static final SERVICE_ACTION_UT:Ljava/lang/String;

.field public static final SERVICE_CLASS_CALL:Ljava/lang/String; = "com.spreadtrum.vowifi.service.CallService"

.field public static final SERVICE_CLASS_REG:Ljava/lang/String; = "com.spreadtrum.vowifi.service.RegisterService"

.field public static final SERVICE_CLASS_SEC:Ljava/lang/String; = "com.spreadtrum.vowifi.service.SecurityService"

.field public static final SERVICE_CLASS_SMS:Ljava/lang/String; = "com.spreadtrum.vowifi.service.SmsService"

.field public static final SERVICE_CLASS_UT:Ljava/lang/String; = "com.spreadtrum.vowifi.service.UTService"

.field public static final SERVICE_PACKAGE:Ljava/lang/String; = "com.spreadtrum.vowifi"

.field public static final SERVICE_PACKAGE_SEC:Ljava/lang/String; = "com.spreadtrum.vowifi.sec"

.field private static final TAG:Ljava/lang/String;

.field public static sVideoQualitys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 44
    const-class v0, Lcom/spreadtrum/ims/vowifi/Utilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->TAG:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/android/ims/internal/IVoWifiSecurity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_SEC:Ljava/lang/String;

    .line 59
    const-class v0, Lcom/android/ims/internal/IVoWifiRegister;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_REG:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/android/ims/internal/IVoWifiCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_CALL:Ljava/lang/String;

    .line 61
    const-class v0, Lcom/android/ims/internal/IVoWifiSms;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_SMS:Ljava/lang/String;

    .line 62
    const-class v0, Lcom/android/ims/internal/IVoWifiUT;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->SERVICE_ACTION_UT:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    .line 76
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0x1f

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    const/16 v6, 0x1e

    const v7, 0x2dc6c0

    const v8, 0x3d0900

    const v9, 0x30d40

    const/16 v10, 0x1e

    const/4 v11, 0x1

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0x16

    const/16 v4, 0x1e0

    const/16 v5, 0x280

    const/16 v6, 0xf

    const v7, 0x61a80

    const v8, 0xa1220

    const v9, 0x249f0

    const/16 v10, 0xf

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0x1e

    const/16 v6, 0x1e

    const v7, 0x927c0

    const v8, 0xef420

    const/16 v10, 0x1e

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0xc

    const/16 v4, 0xf0

    const/16 v5, 0x140

    const/16 v6, 0xf

    const v7, 0x3e800

    const v8, 0x4e200

    const v9, 0x186a0

    const/16 v10, 0xf

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0xd

    const/16 v6, 0x1e

    const v7, 0x5dc00

    const v8, 0x7d000

    const/16 v10, 0x1e

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0xe

    const/16 v4, 0x160

    const/16 v5, 0x120

    const v7, 0x493e0

    const v8, 0x61a80

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    const/16 v3, 0xb

    const/16 v4, 0xb0

    const/16 v5, 0x90

    const v7, 0x186a0

    const v8, 0x493e0

    const v9, 0xea60

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;-><init>(IIIIIIIII)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findVideoQuality(F)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;
    .locals 3

    .line 254
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    .line 257
    iget v2, v1, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;->_level:I

    int-to-float v2, v2

    cmpl-float v2, v2, p0

    if-nez v2, :cond_0

    .line 258
    return-object v1

    .line 260
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultVideoQuality(Landroid/content/SharedPreferences;)Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;
    .locals 2

    .line 229
    nop

    .line 230
    const/4 v0, 0x2

    if-eqz p0, :cond_0

    .line 231
    const-string v1, "vt_resolution"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 234
    packed-switch p0, :pswitch_data_0

    move v0, p0

    goto :goto_0

    .line 245
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 242
    :pswitch_1
    const/4 v0, 0x3

    .line 243
    goto :goto_0

    .line 239
    :pswitch_2
    nop

    .line 240
    goto :goto_0

    .line 236
    :pswitch_3
    const/4 v0, 0x1

    .line 250
    :cond_0
    :goto_0
    sget-object p0, Lcom/spreadtrum/ims/vowifi/Utilities;->sVideoQualitys:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vowifi/Utilities$VideoQuality;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsManager(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 0

    .line 174
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method public static getImsiForSub(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 169
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 170
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryCard(Landroid/content/Context;)I
    .locals 2

    .line 149
    nop

    .line 150
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 151
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 153
    return v0

    .line 157
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 158
    if-gez p0, :cond_1

    .line 159
    return v0

    .line 161
    :cond_1
    return p0
.end method

.method public static getPrimaryCardSubId(Landroid/content/Context;)I
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getSubId(I)I

    move-result p0

    return p0
.end method

.method public static getStringFromArray([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 124
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{[0]"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    nop

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " | ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_2
    :goto_1
    const-string p0, "{null}"

    return-object p0
.end method

.method public static getSubId(I)I
    .locals 3

    .line 139
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    const/4 p0, 0x0

    aget p0, v0, p0

    return p0

    .line 141
    :cond_1
    :goto_0
    sget-object v0, Lcom/spreadtrum/ims/vowifi/Utilities;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get the sub id from the phone id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 p0, -0x1

    return p0
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Adapter]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAirplaneModeOff(Landroid/content/Context;)Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAudioCall(I)Z
    .locals 2

    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isCallWaitingEnabled()Z
    .locals 2

    .line 120
    const-string v0, "gsm.ss.call_waiting"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSameCallee(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 272
    return v2

    .line 274
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 281
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 282
    :cond_3
    return v2

    .line 287
    :cond_4
    return v1

    .line 276
    :cond_5
    :goto_0
    return v2

    .line 268
    :cond_6
    :goto_1
    return v1
.end method

.method public static isSupportSOSSingleProcess(Landroid/content/Context;)Z
    .locals 2

    .line 103
    const-string v0, "persist.vowifi.sec.ser.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 106
    const-string v0, "com.spreadtrum.vowifi.sec"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 109
    :cond_0
    sget-object p0, Lcom/spreadtrum/ims/vowifi/Utilities;->TAG:Ljava/lang/String;

    const-string v0, "The secondary vowifi server is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1
.end method

.method public static isVideoCall(I)Z
    .locals 2

    .line 193
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoRX(I)Z
    .locals 1

    .line 202
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoTX(I)Z
    .locals 1

    .line 198
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 183
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getImsManager(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 184
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCard(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getImsManager(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;II)V
    .locals 1

    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 207
    return-void
.end method

.method public static notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;III)V
    .locals 8

    .line 211
    new-instance v7, Landroid/telephony/ims/ImsSuppServiceNotification;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, ""

    move-object v0, v7

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 213
    invoke-static {p0, p1, p3, v7}, Lcom/spreadtrum/ims/vowifi/Utilities;->notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;IILandroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 214
    return-void
.end method

.method private static notifyImsEvent(Lcom/android/ims/internal/IImsServiceEx;IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2

    .line 218
    if-nez p0, :cond_0

    return-void

    .line 221
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceEx;->notifyImsEvent(IILandroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 222
    :catch_0
    move-exception p0

    .line 223
    sget-object p3, Lcom/spreadtrum/ims/vowifi/Utilities;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify ims event["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] as catch the ex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 224
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void
.end method
