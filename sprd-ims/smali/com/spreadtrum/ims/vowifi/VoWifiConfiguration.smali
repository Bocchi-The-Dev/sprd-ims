.class public Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;
.super Ljava/lang/Object;
.source "VoWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;,
        Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;,
        Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;,
        Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;
    }
.end annotation


# static fields
.field private static final PARAM_GID:Ljava/lang/String; = "gid"

.field private static final PARAM_MCC:Ljava/lang/String; = "mcc"

.field private static final PARAM_MNC:Ljava/lang/String; = "mnc"

.field private static final PARAM_SUBID:Ljava/lang/String; = "subId"

.field private static final TAG:Ljava/lang/String;

.field private static final URI_CALL:Landroid/net/Uri;

.field private static final URI_IKE:Landroid/net/Uri;

.field private static final URI_MESSAGE:Landroid/net/Uri;

.field private static final URI_REG:Landroid/net/Uri;

.field private static final URI_UT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->TAG:Ljava/lang/String;

    .line 99
    nop

    .line 100
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/security"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    .line 101
    nop

    .line 102
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/register"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    .line 103
    nop

    .line 104
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_CALL:Landroid/net/Uri;

    .line 105
    nop

    .line 106
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_MESSAGE:Landroid/net/Uri;

    .line 107
    nop

    .line 108
    const-string v0, "content://com.spreadtrum.vowifi.accountsettings/ut"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_UT:Landroid/net/Uri;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegPANICountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/Utilities;->getPrimaryCardSubId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getRegPANICountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRegPANICountryCode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    const-string v1, ""

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    const-string v2, "withCountryInPANI"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 175
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    .line 176
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 177
    :goto_0
    if-eqz v3, :cond_3

    .line 178
    new-instance v2, Landroid/telephony/TelephonyManager;

    invoke-direct {v2, p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 179
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_1
    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_2
    return-object v1

    .line 183
    :cond_3
    nop

    .line 188
    if-eqz v0, :cond_4

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_4
    return-object v1

    .line 188
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_5
    throw p0

    .line 188
    :cond_6
    if-eqz v0, :cond_7

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_7
    return-object v1
.end method

.method public static getRegRetryMaxCount(Landroid/content/Context;)I
    .locals 6

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 119
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "retryMaxCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_0
    return v0

    .line 124
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 125
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    throw v0

    .line 124
    :cond_2
    if-eqz p0, :cond_3

    .line 125
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getUtConfiguration(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_UT:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getUtConfiguration(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 6

    .line 261
    sget-object v0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_UT:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "subId"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static isRegRequestCNI(Landroid/content/Context;)Z
    .locals 6

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 151
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    const-string v1, "withCNI"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 153
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 154
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 158
    :cond_0
    if-eqz p0, :cond_1

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    return v0

    .line 158
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_2
    throw v0

    .line 158
    :cond_3
    if-eqz p0, :cond_4

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    return v0
.end method

.method public static isRegRequestPLCI(Landroid/content/Context;)Z
    .locals 6

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 135
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v1, "withPLCI"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 137
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 140
    :cond_0
    if-eqz p0, :cond_1

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_1
    return v0

    .line 140
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    throw v0

    .line 140
    :cond_3
    if-eqz p0, :cond_4

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_4
    return v0
.end method

.method public static isSmsStatusReportFromCS(Landroid/content/Context;)Z
    .locals 6

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_MESSAGE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 217
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    const-string v1, "smsReportFromCS"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 219
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 220
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 224
    :cond_0
    if-eqz p0, :cond_1

    .line 225
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    return v0

    .line 224
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 225
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_2
    throw v0

    .line 224
    :cond_3
    if-eqz p0, :cond_4

    .line 225
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_4
    return v0
.end method

.method public static isSupportSMS(Landroid/content/Context;)Z
    .locals 6

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_MESSAGE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 199
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    const-string v1, "smsSupport"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 201
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 202
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 206
    :cond_0
    if-eqz p0, :cond_1

    .line 207
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_1
    return v0

    .line 206
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 207
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_2
    throw v0

    .line 206
    :cond_3
    if-eqz p0, :cond_4

    .line 207
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_4
    return v0
.end method

.method public static isSupportUT(Landroid/content/Context;)Z
    .locals 0

    .line 233
    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getUtConfiguration(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSupportUT(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static isSupportUT(Landroid/content/Context;I)Z
    .locals 0

    .line 237
    invoke-static {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->getUtConfiguration(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSupportUT(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method private static isSupportUT(Landroid/database/Cursor;)Z
    .locals 3

    .line 241
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    :try_start_0
    const-string v1, "utSupport"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 244
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 245
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 248
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 245
    return v0

    .line 248
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 249
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 249
    throw v0

    .line 252
    :cond_2
    :goto_0
    sget-object p0, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get ut configuration, handle ut support as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v0
.end method

.method private static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 359
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateCallPeerFrom(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;)Z
    .locals 2

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$PeerFromType;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "peer_from_pai"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_CALL:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeDpdTimer(Landroid/content/Context;I)Z
    .locals 2

    .line 273
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ike_profile_dpd_timer"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeFQDN(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    const-string v1, "ike_profile_static_ip"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeIpsecEncryptType(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;)Z
    .locals 2

    .line 298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$EncryptType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ike_profile_ipsec_encrypt_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeIpsecIntegType(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;)Z
    .locals 2

    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$IntegType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ike_profile_ipsec_integ_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeReKeyTimer(Landroid/content/Context;I)Z
    .locals 3

    .line 285
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ike_profile_ipsec_rekey_timer"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ike_profile_ike_rekey_timer"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateIkeReTransTimes(Landroid/content/Context;I)Z
    .locals 2

    .line 279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ike_profile_re_trans_times"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_IKE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegRingbackTimer(Landroid/content/Context;I)Z
    .locals 2

    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ringback_timer"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegRingbackTimerB(Landroid/content/Context;I)Z
    .locals 2

    .line 334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ringback_timerB"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegSipTimer1(Landroid/content/Context;I)Z
    .locals 2

    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sip_timer1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegSipTimer2(Landroid/content/Context;I)Z
    .locals 2

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sip_timer2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegSipTimer4(Landroid/content/Context;I)Z
    .locals 2

    .line 352
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sip_timer4"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegTransType(Landroid/content/Context;Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;)Z
    .locals 2

    .line 322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 323
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration$TransportType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "transport_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegUseIpsec(Landroid/content/Context;Z)Z
    .locals 2

    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "use_ipsec"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 312
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static updateRegUserAgent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 317
    const-string v1, "userAgent"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object p1, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->URI_REG:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method
