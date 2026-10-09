.class public Lcom/spreadtrum/ims/n3am/vowifi/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrScreenState;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsAttrCountryCode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$ImsMsgCountryRsp;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiRssi;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrCountryCode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosRtt;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosJitter;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVideoQosLoss;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiBSSID;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiDisabled;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiSameAddr;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWifiStatus;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrAirplaneMode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrVoLTEEnabled;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefModeRoaming;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCPrefMode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrWFCEnabled;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrPrimaryPhone;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmAttrSimReady;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgScreenState;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiRssiRsp;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCountryRsp;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoRtpReceived;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoNoRtp;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVideoQos;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgPowerOff;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgAirplaneMode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWifiStatus;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgVoLTEEnabled;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCPreferMode;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgWFCEnabled;,
        Lcom/spreadtrum/ims/n3am/vowifi/Utilities$CmMsgCardInfo;
    }
.end annotation


# static fields
.field private static final PROP_KEY_DUAL_VOWIFI:Ljava/lang/String; = "persist.sys.wfc.supp_dual_sim"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportDualVoWifi()Z
    .locals 2

    .line 20
    const-string v0, "persist.sys.wfc.supp_dual_sim"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
