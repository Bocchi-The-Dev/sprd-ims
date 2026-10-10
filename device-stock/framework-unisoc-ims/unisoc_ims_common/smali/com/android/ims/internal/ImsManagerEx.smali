.class public Lcom/android/ims/internal/ImsManagerEx;
.super Ljava/lang/Object;
.source "ImsManagerEx.java"


# static fields
.field public static final blacklist EVENT_IMS_VIDEO_CALL_SCREEN_INTERACTION:Ljava/lang/String; = "event_ims_video_call_screen_interaction"

.field public static final blacklist EXTRA_IMS_CONFERENCE_PARTICIPANTS:Ljava/lang/String; = "android.intent.extra.IMS_CONFERENCE_PARTICIPANTS"

.field public static final blacklist EXTRA_IMS_CONFERENCE_REQUEST:Ljava/lang/String; = "android.intent.extra.IMS_CONFERENCE_REQUEST"

.field public static final blacklist HANDOVER_CANCELED:I = 0x3

.field public static final blacklist HANDOVER_COMPLETED:I = 0x1

.field public static final blacklist HANDOVER_FAILED:I = 0x2

.field public static final blacklist HANDOVER_STARTED:I = 0x0

.field public static final blacklist IMS_CALL_EVENT:I = 0xc8

.field public static final blacklist IMS_CALL_EVENT_CONF_CANT_INVITE:I = 0xd7

.field public static final blacklist IMS_CALL_EVENT_CONF_CANT_MERGE_MORE:I = 0xdb

.field public static final blacklist IMS_CALL_EVENT_CONF_CONNECT_TIME_OUT:I = 0xcf

.field public static final blacklist IMS_CALL_EVENT_CONF_DISCONNECT:I = 0xd0

.field public static final blacklist IMS_CALL_EVENT_CONF_FINISHED:I = 0xd1

.field public static final blacklist IMS_CALL_EVENT_CONF_INVITE_FAILED:I = 0xd3

.field public static final blacklist IMS_CALL_EVENT_CONF_INVITE_REQUEST_FAILED:I = 0xd2

.field public static final blacklist IMS_CALL_EVENT_CONF_NONE_PARTICIPANT:I = 0xd5

.field public static final blacklist IMS_CALL_EVENT_CONF_NOT_SUPPORT:I = 0xd6

.field public static final blacklist IMS_CALL_EVENT_CONF_PARTICIPANT_REMOVE_FAILED:I = 0xd4

.field public static final blacklist IMS_CALL_EVENT_CONF_VOWIFI_CALL_FAILED:I = 0xd9

.field public static final blacklist IMS_CALL_EVENT_CONF_VOWIFI_CALL_RETRY:I = 0xd8

.field public static final blacklist IMS_CALL_EVENT_RTT_CALL_DOWNGRADE:I = 0xda

.field public static final blacklist IMS_CALL_EVENT_SHOW_LOW_BATTERY_DIALOG:I = 0xce

.field public static final blacklist IMS_CALL_EVENT_UPGRADE_REQUEST_ACCEPTED:I = 0xca

.field public static final blacklist IMS_CALL_EVENT_UPGRADE_REQUEST_REJECTED:I = 0xcb

.field public static final blacklist IMS_CALL_EVENT_UPGRADE_REQUEST_TIME_OUT:I = 0xc9

.field public static final blacklist IMS_CALL_EVENT_VIDEO_CAMERA_OPEN_FAILED:I = 0xcd

.field public static final blacklist IMS_CALL_EVENT_VIDEO_DOWNGRADE:I = 0xcc

.field public static final blacklist IMS_CALL_EXTRA_CALL_INDEX:Ljava/lang/String; = "ims_call_index"

.field public static final blacklist IMS_CALL_EXTRA_CALL_RTT_CPS:Ljava/lang/String; = "ims_call_rtt_cps"

.field public static final blacklist IMS_CALL_EXTRA_CVAT_VIDEO:Ljava/lang/String; = "ims_call_extra_cvat_video"

.field public static final blacklist IMS_CALL_EXTRA_CVAT_VOICE:Ljava/lang/String; = "ims_call_extra_cvat_voice"

.field public static final blacklist IMS_CALL_EXTRA_CVRS_VIDEO:Ljava/lang/String; = "ims_call_extra_cvrs_video"

.field public static final blacklist IMS_CALL_EXTRA_CVRS_VOICE:Ljava/lang/String; = "ims_call_extra_cvrs_voice"

.field public static final blacklist IMS_CALL_EXTRA_DIGITS:Ljava/lang/String; = "ims_call_extra_digits"

.field public static final blacklist IMS_CALL_EXTRA_EVENT_MOVE:I = 0x2

.field public static final blacklist IMS_CALL_EXTRA_EVENT_TOUCH:I = 0x1

.field public static final blacklist IMS_CALL_EXTRA_EVENT_TYPE:Ljava/lang/String; = "ims_call_extra_event_type"

.field public static final blacklist IMS_CALL_EXTRA_FUNCTION_FLAG:Ljava/lang/String; = "ims_call_extra_function_flag"

.field public static final blacklist IMS_CALL_EXTRA_MT_CONFERENCE:Ljava/lang/String; = "ims_mt_conf"

.field public static final blacklist IMS_CALL_EXTRA_NOTIFY_TYPE:Ljava/lang/String; = "ims_call_extra_notify_type"

.field public static final blacklist IMS_CALL_EXTRA_REJECT_REASON:Ljava/lang/String; = "ims_call_extra_reject_reason"

.field public static final blacklist IMS_CALL_EXTRA_REJECT_TEXT:Ljava/lang/String; = "ims_call_extra_reject_text"

.field public static final blacklist IMS_CALL_EXTRA_SCREEN_INTERACTION_CAP:Ljava/lang/String; = "ims_call_extra_screen_interaction_cap"

.field public static final blacklist IMS_CALL_EXTRA_SCREEN_INTERACTION_CAP_ACK:Ljava/lang/String; = "ims_call_extra_screen_interaction_cap_ack"

.field public static final blacklist IMS_CALL_EXTRA_SCREEN_SHARE_SURFACE:Ljava/lang/String; = "ims_call_extra_screen_share_surface"

.field public static final blacklist IMS_CALL_EXTRA_TOUCH_DURATION:Ljava/lang/String; = "ims_call_extra_touch_duration"

.field public static final blacklist IMS_DOZE_MANAGER:Ljava/lang/String; = "ims_doze_manager"

.field public static final blacklist IMS_PDN_ACTIVE_FAILED:I = 0x0

.field public static final blacklist IMS_PDN_READY:I = 0x1

.field public static final blacklist IMS_PDN_START:I = 0x2

.field public static final blacklist IMS_REGISTERED:I = 0x1

.field public static final blacklist IMS_REGISTER_EVENT:I = 0x64

.field public static final blacklist IMS_REGISTER_EVENT_DISMISS_VOWIFI_NOTIFICATION:I = 0x67

.field public static final blacklist IMS_REGISTER_EVENT_RTT_OPERATE_FAILED_NOTIFICATION:I = 0x68

.field public static final blacklist IMS_REGISTER_EVENT_SHOW_VOWIFI_NOTIFICATION:I = 0x65

.field public static final blacklist IMS_REGISTER_EVENT_VOWIFI_HANDOVER_TO_VOLTE:I = 0x66

.field public static final blacklist IMS_SERVICE_EX:Ljava/lang/String; = "ims_ex"

.field public static final blacklist IMS_SS_EVENT:I = 0x12c

.field public static final blacklist IMS_UNREGISTERED:I = 0x0

.field public static final blacklist IMS_UT_EX:Ljava/lang/String; = "ims_ut_ex"

.field private static final blacklist LTE_LTE_4M:Ljava/lang/String; = "TL_LF_W_G,TL_LF_W_G"

.field private static final blacklist LTE_LTE_5M:Ljava/lang/String; = "TL_LF_TD_W_G,TL_LF_TD_W_G"

.field private static final blacklist MODEM_CONFIG_PROP:Ljava/lang/String; = "persist.vendor.radio.modem.config"

.field public static final blacklist PROPERTY_SINGLE_IMS_STACK:Ljava/lang/String; = "persist.vendor.sys.single.imsstack"

.field private static final blacklist SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsManagerEx"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist booleanToPropertyString(Z)Ljava/lang/String;
    .locals 0

    .line 407
    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private static blacklist getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 334
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 335
    invoke-static {p0, p1, v0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private static blacklist getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1

    .line 345
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 348
    nop

    .line 349
    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_0
    const/4 p1, 0x0

    .line 353
    :goto_0
    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 357
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist getBooleanUniCarrierConfig(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1

    .line 362
    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/android/ims/internal/ImsManagerEx;->isSubIdValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Landroid/telephony/UniCarrierConfigManager;

    invoke-direct {v0, p1}, Landroid/telephony/UniCarrierConfigManager;-><init>(Landroid/content/Context;)V

    .line 365
    nop

    .line 366
    nop

    .line 368
    invoke-virtual {v0, p2}, Landroid/telephony/UniCarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 370
    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 374
    :cond_1
    invoke-static {}, Landroid/telephony/UniCarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 362
    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;
    .locals 1

    .line 139
    const-string v0, "ims_ex"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    nop

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0
.end method

.method public static blacklist getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;
    .locals 1

    .line 151
    const-string v0, "ims_ut_ex"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 152
    nop

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtEx;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0
.end method

.method private static blacklist isCarrierConfigApplied(ILandroid/content/Context;)Z
    .locals 1

    .line 429
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 433
    if-eqz p0, :cond_0

    .line 434
    invoke-static {p0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0

    .line 437
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isDualLteModem()Z
    .locals 3

    .line 245
    const-string v0, "persist.vendor.radio.modem.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TL_LF_TD_W_G,TL_LF_TD_W_G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TL_LF_W_G,TL_LF_W_G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 245
    :goto_1
    return v0
.end method

.method public static blacklist isDualVoLTERegistered()Z
    .locals 6

    .line 163
    const-string v0, "gsm.sys.volte.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 165
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    nop

    .line 167
    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 168
    aget-object v4, v0, v2

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x2

    if-lt v3, v0, :cond_2

    .line 173
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_2
    return v1
.end method

.method public static blacklist isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 5

    .line 388
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 389
    return v0

    .line 392
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 391
    const-string v2, "volte_vt_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 394
    const-string v2, "enhanced_4g_lte_on_by_default_bool"

    invoke-static {v2, p0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 398
    const-string v4, "editable_enhanced_4g_lte_bool"

    invoke-static {v4, p0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2

    move v0, p0

    :cond_2
    return v0

    .line 400
    :cond_3
    :goto_0
    return v2
.end method

.method public static blacklist isImsRegisteredForPhone(I)Z
    .locals 6

    .line 203
    nop

    .line 204
    nop

    .line 206
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    return v1

    .line 209
    :cond_0
    const-string v0, "gsm.sys.volte.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v2, ",1"

    const-string v3, "1"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 211
    if-nez p0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    if-ne p0, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    goto :goto_1

    .line 210
    :cond_3
    move v0, v1

    .line 215
    :goto_1
    const-string v5, "gsm.sys.vowifi.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_6

    .line 217
    if-nez p0, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    .line 218
    :cond_4
    if-ne p0, v4, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    :cond_5
    move p0, v1

    :goto_2
    goto :goto_3

    .line 216
    :cond_6
    move p0, v1

    .line 221
    :goto_3
    if-nez v0, :cond_7

    if-eqz p0, :cond_8

    :cond_7
    move v1, v4

    :cond_8
    return v1
.end method

.method public static blacklist isSingleImsStack()Z
    .locals 2

    .line 442
    const-string v0, "persist.vendor.sys.single.imsstack"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 443
    return v0
.end method

.method private static blacklist isSubIdValid(I)Z
    .locals 1

    .line 449
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static blacklist isVoLTERegisteredForPhone(I)Z
    .locals 3

    .line 185
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 188
    :cond_0
    const-string v0, "gsm.sys.volte.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_3

    .line 190
    if-nez p0, :cond_1

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    const-string p0, ",1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 190
    :cond_2
    :goto_0
    return v1

    .line 193
    :cond_3
    return v1
.end method

.method public static blacklist isVoWiFiRegisteredForPhone(I)Z
    .locals 3

    .line 230
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    return v1

    .line 233
    :cond_0
    const-string v0, "gsm.sys.vowifi.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_3

    .line 235
    if-nez p0, :cond_1

    const-string p0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    const-string p0, ",1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 235
    :cond_2
    :goto_0
    return v1

    .line 238
    :cond_3
    return v1
.end method

.method public static blacklist isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3

    .line 266
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 267
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "carrier_volte_available_bool"

    invoke-static {v1, p0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 273
    const-string p0, "persist.vendor.sys.volte.enable"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 270
    :goto_0
    return v0
.end method

.method public static blacklist isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3

    .line 285
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 286
    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "carrier_wfc_ims_available_bool"

    invoke-static {v1, p0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 288
    :goto_0
    return v0
.end method

.method public static blacklist isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 3

    .line 303
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 302
    const-string v1, "wfc_ims_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 307
    if-ne v0, v2, :cond_0

    .line 308
    const-string v0, "carrier_default_wfc_ims_enabled_bool"

    invoke-static {v0, p0}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanCarrierConfig(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 311
    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static blacklist notifyVideoCapabilityChange()V
    .locals 1

    .line 254
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsServiceEx;->notifyVideoCapabilityChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    :goto_0
    return-void
.end method

.method public static blacklist setWfcSetting(Landroid/content/Context;Z)V
    .locals 1

    .line 321
    if-nez p0, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 327
    nop

    .line 325
    const-string v0, "wfc_ims_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 330
    invoke-static {p1}, Lcom/android/ims/internal/ImsManagerEx;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p0, v0, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public static blacklist synSettingForWFCandVoLTE(Landroid/content/Context;)Z
    .locals 1

    .line 412
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 413
    invoke-static {p0, v0}, Lcom/android/ims/internal/ImsManagerEx;->synSettingForWFCandVoLTE(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist synSettingForWFCandVoLTE(Landroid/content/Context;I)Z
    .locals 1

    .line 418
    const-string v0, "synchronous_setting_for_wfc_volte"

    invoke-static {v0, p0, p1}, Lcom/android/ims/internal/ImsManagerEx;->getBooleanUniCarrierConfig(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result p0

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "synSettingForWFCandVoLTE =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsManagerEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return p0
.end method
