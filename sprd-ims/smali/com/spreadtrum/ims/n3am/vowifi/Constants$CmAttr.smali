.class public Lcom/spreadtrum/ims/n3am/vowifi/Constants$CmAttr;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmAttr"
.end annotation


# static fields
.field public static final ID_AIRPLANE_MODE:I = 0x6

.field public static final ID_COUNTRY_RSP:I = 0x10

.field public static final ID_OBSERVE_WIFI:I = 0x11

.field public static final ID_PRIMARY_PHONE:I = 0x1

.field public static final ID_SCREEN_STATE:I = 0x12

.field public static final ID_SIM_READY:I = 0x0

.field public static final ID_VIDEO_FIRST_REC_RTP:I = 0xf

.field public static final ID_VIDEO_NO_RTP:I = 0xe

.field public static final ID_VIDEO_QOS_JITTER:I = 0xc

.field public static final ID_VIDEO_QOS_LOSS:I = 0xb

.field public static final ID_VIDEO_QOS_RTT:I = 0xd

.field public static final ID_VOLTE_ENABLED:I = 0x5

.field public static final ID_WFC_ENABLED:I = 0x2

.field public static final ID_WFC_PREF_MODE:I = 0x3

.field public static final ID_WFC_PREF_MODE_ROAMING:I = 0x4

.field public static final ID_WIFI_BSSID:I = 0x8

.field public static final ID_WIFI_DISABLED:I = 0xa

.field public static final ID_WIFI_RSSI_RSP:I = 0xe0

.field public static final ID_WIFI_SAME_IP:I = 0x9

.field public static final ID_WIFI_STATUS:I = 0x7

.field public static final NAME_AIRPLANE_MODE:Ljava/lang/String; = "airplane_mode"

.field public static final NAME_COUNTRY_RSP:Ljava/lang/String; = "country_code_response"

.field public static final NAME_OBSERVE_WIFI:Ljava/lang/String; = "notify_observe_wifi"

.field public static final NAME_PRIMARY_PHONE:Ljava/lang/String; = "primary_phone"

.field public static final NAME_SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field public static final NAME_SIM_READY:Ljava/lang/String; = "sim_ready"

.field public static final NAME_VIDEO_FIRST_REC_RTP:Ljava/lang/String; = "video_rtp_received"

.field public static final NAME_VIDEO_NO_RTP:Ljava/lang/String; = "video_no_rtp"

.field public static final NAME_VIDEO_QOS_JITTER:Ljava/lang/String; = "video_qos_jitter"

.field public static final NAME_VIDEO_QOS_LOSS:Ljava/lang/String; = "video_qos_loss"

.field public static final NAME_VIDEO_QOS_RTT:Ljava/lang/String; = "video_qos_rtt"

.field public static final NAME_VOLTE_ENABLED:Ljava/lang/String; = "volte_enabled"

.field public static final NAME_WFC_ENABLED:Ljava/lang/String; = "wfc_enabled"

.field public static final NAME_WFC_PREF_MODE:Ljava/lang/String; = "wfc_pref_mode"

.field public static final NAME_WFC_PREF_MODE_ROAMING:Ljava/lang/String; = "wfc_pref_mode_roaming"

.field public static final NAME_WIFI_BSSID:Ljava/lang/String; = "wifi_bssid"

.field public static final NAME_WIFI_DISABLED:Ljava/lang/String; = "wifi_disabled"

.field public static final NAME_WIFI_RSSI_RSP:Ljava/lang/String; = "wifi_rssi_response"

.field public static final NAME_WIFI_SAME_IP:Ljava/lang/String; = "wifi_ip_same_as_old"

.field public static final NAME_WIFI_STATUS:Ljava/lang/String; = "wifi_status"

.field public static final START_OBSERVE_WIFI:I = 0x1

.field public static final STOP_OBSERVE_WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
