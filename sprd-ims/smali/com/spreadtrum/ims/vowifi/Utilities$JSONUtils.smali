.class public Lcom/spreadtrum/ims/vowifi/Utilities$JSONUtils;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONUtils"
.end annotation


# static fields
.field public static final ACTION_CS_RETRY:Ljava/lang/String; = "cs_retry"

.field public static final ACTION_DOWNGRADE_IMS_RETRY:Ljava/lang/String; = "downgrade_ims_retry"

.field public static final ACTION_IMS_RETRY:Ljava/lang/String; = "ims_retry"

.field public static final ALERT_INFO_CALL_FAILURE:Ljava/lang/String; = "info_call_failure"

.field public static final ALERT_TYPE_CALL_FORWARD:Ljava/lang/String; = "call_forward"

.field public static final ALERT_TYPE_CALL_WAITING:Ljava/lang/String; = "call_waiting"

.field public static final CALL_EVENT_CODE_BASE:I = 0x64

.field public static final CONF_EVENT_CODE_BASE:I = 0xc8

.field public static final COOKIE_ITEM_CLIR:Ljava/lang/String; = "clir_mode"

.field public static final COOKIE_ITEM_CNI_AGE:Ljava/lang/String; = "cni_age"

.field public static final COOKIE_ITEM_CNI_INFO:Ljava/lang/String; = "cni_info"

.field public static final COOKIE_ITEM_CNI_TYPE:Ljava/lang/String; = "cni_type"

.field public static final EVENT_ATTACH_FAILED:Ljava/lang/String; = "attach_failed"

.field public static final EVENT_ATTACH_PROGRESSING:Ljava/lang/String; = "attach_progressing"

.field public static final EVENT_ATTACH_STOPPED:Ljava/lang/String; = "attach_stopped"

.field public static final EVENT_ATTACH_SUCCESSED:Ljava/lang/String; = "attach_successed"

.field public static final EVENT_CALL_ADD_VIDEO_CANCEL:Ljava/lang/String; = "call_add_video_cancel"

.field public static final EVENT_CALL_ADD_VIDEO_REQUEST:Ljava/lang/String; = "call_add_video_request"

.field public static final EVENT_CALL_ALERTED:Ljava/lang/String; = "call_alerted"

.field public static final EVENT_CALL_ERROR_CODE_ACTION:Ljava/lang/String; = "call_error_code_action"

.field public static final EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "call_hold_failed"

.field public static final EVENT_CALL_HOLD_OK:Ljava/lang/String; = "call_hold_ok"

.field public static final EVENT_CALL_HOLD_RECEIVED:Ljava/lang/String; = "call_hold_received"

.field public static final EVENT_CALL_INCOMING:Ljava/lang/String; = "call_incoming"

.field public static final EVENT_CALL_IS_EMERGENCY:Ljava/lang/String; = "call_is_emergency"

.field public static final EVENT_CALL_IS_FOCUS:Ljava/lang/String; = "call_is_focus"

.field public static final EVENT_CALL_IS_FORWARDED:Ljava/lang/String; = "call_is_forwarded"

.field public static final EVENT_CALL_OUTGOING:Ljava/lang/String; = "call_outgoing"

.field public static final EVENT_CALL_PLAY_RINGTONE:Ljava/lang/String; = "call_play_ringtone"

.field public static final EVENT_CALL_PRECONDITION_START:Ljava/lang/String; = "call_precondition_start"

.field public static final EVENT_CALL_REQUIRE_ALERT_INFO:Ljava/lang/String; = "call_require_alert_info"

.field public static final EVENT_CALL_REQUIRE_DEREGISTER:Ljava/lang/String; = "call_require_deregister"

.field public static final EVENT_CALL_RESUME_FAILED:Ljava/lang/String; = "call_resume_failed"

.field public static final EVENT_CALL_RESUME_OK:Ljava/lang/String; = "call_resume_ok"

.field public static final EVENT_CALL_RESUME_RECEIVED:Ljava/lang/String; = "call_resume_received"

.field public static final EVENT_CALL_RTCP_CHANGED:Ljava/lang/String; = "call_rtcp_changed"

.field public static final EVENT_CALL_RTP_RECEIVED:Ljava/lang/String; = "call_rtp_received"

.field public static final EVENT_CALL_TALKING:Ljava/lang/String; = "call_talking"

.field public static final EVENT_CALL_TERMINATE:Ljava/lang/String; = "call_terminate"

.field public static final EVENT_CALL_UPDATE_VIDEO_FAILED:Ljava/lang/String; = "call_update_video_failed"

.field public static final EVENT_CALL_UPDATE_VIDEO_OK:Ljava/lang/String; = "call_update_video_ok"

.field public static final EVENT_CODE_ATTACH_FAILED:I = 0x2

.field public static final EVENT_CODE_ATTACH_PROGRESSING:I = 0x3

.field public static final EVENT_CODE_ATTACH_STOPPED:I = 0x4

.field public static final EVENT_CODE_ATTACH_SUCCESSED:I = 0x1

.field public static final EVENT_CODE_CALL_ADD_VIDEO_CANCEL:I = 0x73

.field public static final EVENT_CODE_CALL_ADD_VIDEO_REQUEST:I = 0x72

.field public static final EVENT_CODE_CALL_ALERTED:I = 0x67

.field public static final EVENT_CODE_CALL_ERROR_CODE_ACTION:I = 0x7d

.field public static final EVENT_CODE_CALL_HOLD_FAILED:I = 0x6b

.field public static final EVENT_CODE_CALL_HOLD_OK:I = 0x6a

.field public static final EVENT_CODE_CALL_HOLD_RECEIVED:I = 0x6e

.field public static final EVENT_CODE_CALL_INCOMING:I = 0x65

.field public static final EVENT_CODE_CALL_IS_EMERGENCY:I = 0x77

.field public static final EVENT_CODE_CALL_IS_FOCUS:I = 0x76

.field public static final EVENT_CODE_CALL_IS_FORWARDED:I = 0x79

.field public static final EVENT_CODE_CALL_OUTGOING:I = 0x66

.field public static final EVENT_CODE_CALL_PLAY_RINGTONE:I = 0x7e

.field public static final EVENT_CODE_CALL_PRECONDITION_START:I = 0x7c

.field public static final EVENT_CODE_CALL_REQUIRE_ALERT_INFO:I = 0x7b

.field public static final EVENT_CODE_CALL_REQUIRE_DEREGISTER:I = 0x7a

.field public static final EVENT_CODE_CALL_RESUME_FAILED:I = 0x6d

.field public static final EVENT_CODE_CALL_RESUME_OK:I = 0x6c

.field public static final EVENT_CODE_CALL_RESUME_RECEIVED:I = 0x6f

.field public static final EVENT_CODE_CALL_RTCP_CHANGED:I = 0x75

.field public static final EVENT_CODE_CALL_RTP_RECEIVED:I = 0x74

.field public static final EVENT_CODE_CALL_TALKING:I = 0x68

.field public static final EVENT_CODE_CALL_TERMINATE:I = 0x69

.field public static final EVENT_CODE_CALL_UPDATE_VIDEO_FAILED:I = 0x71

.field public static final EVENT_CODE_CALL_UPDATE_VIDEO_OK:I = 0x70

.field public static final EVENT_CODE_CONF_ALERTED:I = 0xca

.field public static final EVENT_CODE_CONF_CONNECTED:I = 0xcb

.field public static final EVENT_CODE_CONF_DISCONNECTED:I = 0xcc

.field public static final EVENT_CODE_CONF_HOLD_FAILED:I = 0xd3

.field public static final EVENT_CODE_CONF_HOLD_OK:I = 0xd2

.field public static final EVENT_CODE_CONF_HOLD_RECEIVED:I = 0xd6

.field public static final EVENT_CODE_CONF_INVITE_ACCEPT:I = 0xcd

.field public static final EVENT_CODE_CONF_INVITE_FAILED:I = 0xce

.field public static final EVENT_CODE_CONF_KICK_ACCEPT:I = 0xcf

.field public static final EVENT_CODE_CONF_KICK_FAILED:I = 0xd0

.field public static final EVENT_CODE_CONF_OUTGOING:I = 0xc9

.field public static final EVENT_CODE_CONF_PART_UPDATE:I = 0xd1

.field public static final EVENT_CODE_CONF_REFER_NOTIFIED:I = 0xda

.field public static final EVENT_CODE_CONF_RESUME_FAILED:I = 0xd5

.field public static final EVENT_CODE_CONF_RESUME_OK:I = 0xd4

.field public static final EVENT_CODE_CONF_RESUME_RECEIVED:I = 0xd7

.field public static final EVENT_CODE_CONF_RTCP_CHANGED:I = 0xd9

.field public static final EVENT_CODE_CONF_RTP_RECEIVED:I = 0xd8

.field public static final EVENT_CODE_LOCAL_VIDEO_LEVEL_UPDATE:I = 0x12f

.field public static final EVENT_CODE_LOCAL_VIDEO_RESIZE:I = 0x12d

.field public static final EVENT_CODE_LOGIN_FAILED:I = 0x34

.field public static final EVENT_CODE_LOGIN_OK:I = 0x33

.field public static final EVENT_CODE_LOGOUTED:I = 0x35

.field public static final EVENT_CODE_REGISTER_STATE_UPDATE:I = 0x38

.field public static final EVENT_CODE_REMOTE_VIDEO_RESIZE:I = 0x12e

.field public static final EVENT_CODE_REREGISTER_FAILED:I = 0x37

.field public static final EVENT_CODE_REREGISTER_OK:I = 0x36

.field public static final EVENT_CODE_SMS_RECEIVED:I = 0x193

.field public static final EVENT_CODE_SMS_SEND_FINISHED:I = 0x191

.field public static final EVENT_CODE_SMS_STATUS_REPORT_RECEIVED:I = 0x192

.field public static final EVENT_CODE_USSD_INFO_RECEIVED:I = 0x78

.field public static final EVENT_CODE_UT_QUERY_CB_FAILED:I = 0x160

.field public static final EVENT_CODE_UT_QUERY_CB_OK:I = 0x15f

.field public static final EVENT_CODE_UT_QUERY_CF_FAILED:I = 0x162

.field public static final EVENT_CODE_UT_QUERY_CF_OK:I = 0x161

.field public static final EVENT_CODE_UT_QUERY_CLIR_FAILED:I = 0x16c

.field public static final EVENT_CODE_UT_QUERY_CLIR_OK:I = 0x16b

.field public static final EVENT_CODE_UT_QUERY_CW_FAILED:I = 0x164

.field public static final EVENT_CODE_UT_QUERY_CW_OK:I = 0x163

.field public static final EVENT_CODE_UT_UPDATE_CB_FAILED:I = 0x166

.field public static final EVENT_CODE_UT_UPDATE_CB_OK:I = 0x165

.field public static final EVENT_CODE_UT_UPDATE_CF_FAILED:I = 0x168

.field public static final EVENT_CODE_UT_UPDATE_CF_OK:I = 0x167

.field public static final EVENT_CODE_UT_UPDATE_CLIR_FAILED:I = 0x16e

.field public static final EVENT_CODE_UT_UPDATE_CLIR_OK:I = 0x16d

.field public static final EVENT_CODE_UT_UPDATE_CW_FAILED:I = 0x16a

.field public static final EVENT_CODE_UT_UPDATE_CW_OK:I = 0x169

.field public static final EVENT_CODE_VOICE_CODEC:I = 0x119

.field public static final EVENT_CONF_ALERTED:Ljava/lang/String; = "conf_alerted"

.field public static final EVENT_CONF_CONNECTED:Ljava/lang/String; = "conf_connected"

.field public static final EVENT_CONF_DISCONNECTED:Ljava/lang/String; = "conf_disconnected"

.field public static final EVENT_CONF_HOLD_FAILED:Ljava/lang/String; = "conf_hold_failed"

.field public static final EVENT_CONF_HOLD_OK:Ljava/lang/String; = "conf_hold_ok"

.field public static final EVENT_CONF_HOLD_RECEIVED:Ljava/lang/String; = "conf_hold_received"

.field public static final EVENT_CONF_INVITE_ACCEPT:Ljava/lang/String; = "conf_invite_accept"

.field public static final EVENT_CONF_INVITE_FAILED:Ljava/lang/String; = "conf_invite_failed"

.field public static final EVENT_CONF_KICK_ACCEPT:Ljava/lang/String; = "conf_kick_accept"

.field public static final EVENT_CONF_KICK_FAILED:Ljava/lang/String; = "conf_kick_failed"

.field public static final EVENT_CONF_OUTGOING:Ljava/lang/String; = "conf_outgoing"

.field public static final EVENT_CONF_PART_UPDATE:Ljava/lang/String; = "conf_part_update"

.field public static final EVENT_CONF_REFER_NOTIFIED:Ljava/lang/String; = "conf_refer_notified"

.field public static final EVENT_CONF_RESUME_FAILED:Ljava/lang/String; = "conf_resume_failed"

.field public static final EVENT_CONF_RESUME_OK:Ljava/lang/String; = "conf_resume_ok"

.field public static final EVENT_CONF_RESUME_RECEIVED:Ljava/lang/String; = "conf_resume_received"

.field public static final EVENT_CONF_RTCP_CHANGED:Ljava/lang/String; = "conf_rtcp_changed"

.field public static final EVENT_CONF_RTP_RECEIVED:Ljava/lang/String; = "conf_rtp_received"

.field public static final EVENT_LOCAL_VIDEO_LEVEL_UPDATE:Ljava/lang/String; = "local_video_level_update"

.field public static final EVENT_LOCAL_VIDEO_RESIZE:Ljava/lang/String; = "local_video_resize"

.field public static final EVENT_LOGIN_FAILED:Ljava/lang/String; = "login_failed"

.field public static final EVENT_LOGIN_OK:Ljava/lang/String; = "login_ok"

.field public static final EVENT_LOGOUTED:Ljava/lang/String; = "logouted"

.field public static final EVENT_REGISTER_STATE_UPDATE:Ljava/lang/String; = "state_update"

.field public static final EVENT_REMOTE_VIDEO_RESIZE:Ljava/lang/String; = "remote_video_resize"

.field public static final EVENT_REREGISTER_FAILED:Ljava/lang/String; = "refresh_failed"

.field public static final EVENT_REREGISTER_OK:Ljava/lang/String; = "refresh_ok"

.field public static final EVENT_SMS_RECEIVED:Ljava/lang/String; = "sms_received"

.field public static final EVENT_SMS_SEND_FINISHED:Ljava/lang/String; = "sms_send_finished"

.field public static final EVENT_SMS_STATUS_REPORT_RECEIVED:Ljava/lang/String; = "sms_status_report_received"

.field public static final EVENT_USSD_INFO_RECEIVED:Ljava/lang/String; = "ussd_info_received"

.field public static final EVENT_UT_QUERY_CB_FAILED:Ljava/lang/String; = "ut_query_call_barring_failed"

.field public static final EVENT_UT_QUERY_CB_OK:Ljava/lang/String; = "ut_query_call_barring_ok"

.field public static final EVENT_UT_QUERY_CF_FAILED:Ljava/lang/String; = "ut_query_call_forward_failed"

.field public static final EVENT_UT_QUERY_CF_OK:Ljava/lang/String; = "ut_query_call_forward_ok"

.field public static final EVENT_UT_QUERY_CLIR_FAILED:Ljava/lang/String; = "ut_query_clir_failed"

.field public static final EVENT_UT_QUERY_CLIR_OK:Ljava/lang/String; = "ut_query_clir_ok"

.field public static final EVENT_UT_QUERY_CW_FAILED:Ljava/lang/String; = "ut_query_call_waiting_failed"

.field public static final EVENT_UT_QUERY_CW_OK:Ljava/lang/String; = "ut_query_call_waiting_ok"

.field public static final EVENT_UT_UPDATE_CB_FAILED:Ljava/lang/String; = "ut_update_call_barring_failed"

.field public static final EVENT_UT_UPDATE_CB_OK:Ljava/lang/String; = "ut_update_call_barring_ok"

.field public static final EVENT_UT_UPDATE_CF_FAILED:Ljava/lang/String; = "ut_update_call_forward_failed"

.field public static final EVENT_UT_UPDATE_CF_OK:Ljava/lang/String; = "ut_update_call_forward_ok"

.field public static final EVENT_UT_UPDATE_CLIR_FAILED:Ljava/lang/String; = "ut_update_clir_failed"

.field public static final EVENT_UT_UPDATE_CLIR_OK:Ljava/lang/String; = "ut_update_clir_ok"

.field public static final EVENT_UT_UPDATE_CW_FAILED:Ljava/lang/String; = "ut_update_call_waiting_failed"

.field public static final EVENT_UT_UPDATE_CW_OK:Ljava/lang/String; = "ut_update_call_waiting_ok"

.field public static final EVENT_VOICE_CODEC:Ljava/lang/String; = "voice_negociated_codec"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field public static final KEY_CALLBACK_HASHCODE:Ljava/lang/String; = "callback_hashcode"

.field public static final KEY_CONF_CHILD_ID:Ljava/lang/String; = "conf_child_id"

.field public static final KEY_CONF_PART_NEW_STATUS:Ljava/lang/String; = "conf_part_new_status"

.field public static final KEY_DNS_IP4:Ljava/lang/String; = "dns_ip4"

.field public static final KEY_DNS_IP6:Ljava/lang/String; = "dns_ip6"

.field public static final KEY_ECALL_IND_ACTION_TYPE:Ljava/lang/String; = "emergency_call_ind_action_type"

.field public static final KEY_ECALL_IND_REASON:Ljava/lang/String; = "emergency_call_ind_reason"

.field public static final KEY_ECALL_IND_URN_URI:Ljava/lang/String; = "emergency_call_ind_urn_uri"

.field public static final KEY_EVENT_CODE:Ljava/lang/String; = "event_code"

.field public static final KEY_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_VIDEO:Ljava/lang/String; = "is_video"

.field public static final KEY_LOCAL_IP4:Ljava/lang/String; = "local_ip4"

.field public static final KEY_LOCAL_IP6:Ljava/lang/String; = "local_ip6"

.field public static final KEY_PARTICIPANTS_COUNT:Ljava/lang/String; = "participants_count"

.field public static final KEY_PCSCF_IP4:Ljava/lang/String; = "pcscf_ip4"

.field public static final KEY_PCSCF_IP6:Ljava/lang/String; = "pcscf_ip6"

.field public static final KEY_PEER_SUPPORT_VIDEO:Ljava/lang/String; = "peer_support_video"

.field public static final KEY_PHONE_NUM:Ljava/lang/String; = "phone_num"

.field public static final KEY_PREF_IP4:Ljava/lang/String; = "pref_ip4"

.field public static final KEY_PROGRESS_STATE:Ljava/lang/String; = "progress_state"

.field public static final KEY_P_ASSOCIATED_URI:Ljava/lang/String; = "P-Associated-URI"

.field public static final KEY_RETRY_AFTER:Ljava/lang/String; = "retry_after"

.field public static final KEY_RTCP_JITTER:Ljava/lang/String; = "rtcp_jitter"

.field public static final KEY_RTCP_LOSE:Ljava/lang/String; = "rtcp_lose"

.field public static final KEY_RTCP_RTT:Ljava/lang/String; = "rtcp_rtt"

.field public static final KEY_RTP_RECEIVED:Ljava/lang/String; = "rtp_received"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final KEY_SIP_URI:Ljava/lang/String; = "sip_uri"

.field public static final KEY_SMS_MESSAGE_REF:Ljava/lang/String; = "messageRef"

.field public static final KEY_SMS_PDU:Ljava/lang/String; = "pdu"

.field public static final KEY_SMS_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_SMS_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SMS_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_STATE_CODE:Ljava/lang/String; = "state_code"

.field public static final KEY_SUPPORT_MOBIKE:Ljava/lang/String; = "support_mobike"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_USSD_INFO_RECEIVED:Ljava/lang/String; = "ussd_info_received"

.field public static final KEY_USSD_MODE:Ljava/lang/String; = "ussd_mode"

.field public static final KEY_UT_CB_CONDS:Ljava/lang/String; = "ut_cb_conditions"

.field public static final KEY_UT_CB_DIR:Ljava/lang/String; = "ub_cb_dir"

.field public static final KEY_UT_CB_RULES:Ljava/lang/String; = "ut_cb_rules"

.field public static final KEY_UT_CB_RULE_ENABLED:Ljava/lang/String; = "ut_cb_rule_enabled"

.field public static final KEY_UT_CF_ACTION_TARGET:Ljava/lang/String; = "ut_cf_action_target"

.field public static final KEY_UT_CF_CONDS:Ljava/lang/String; = "ut_cf_conditions"

.field public static final KEY_UT_CF_RULES:Ljava/lang/String; = "ut_cf_rules"

.field public static final KEY_UT_CF_RULE_ENABLED:Ljava/lang/String; = "ut_cf_rule_enabled"

.field public static final KEY_UT_CF_RULE_MEDIA:Ljava/lang/String; = "ut_cf_rule_media"

.field public static final KEY_UT_CF_TIME_SECONDS:Ljava/lang/String; = "ut_cf_time_seconds"

.field public static final KEY_UT_CLIR_M_PARAM:Ljava/lang/String; = "ut_clir_m_param"

.field public static final KEY_UT_ENABLED:Ljava/lang/String; = "ut_enabled"

.field public static final KEY_VIDEO_HEIGHT:Ljava/lang/String; = "video_height"

.field public static final KEY_VIDEO_LEVEL:Ljava/lang/String; = "video_level"

.field public static final KEY_VIDEO_TYPE:Ljava/lang/String; = "video_type"

.field public static final KEY_VIDEO_WIDTH:Ljava/lang/String; = "video_width"

.field public static final KEY_VOICE_CODEC:Ljava/lang/String; = "voice_codec"

.field public static final REGISTER_EVENT_CODE_BASE:I = 0x32

.field public static final RULE_MEDIA_AUDIO:Ljava/lang/String; = "audio"

.field public static final RULE_MEDIA_VIDEO:Ljava/lang/String; = "video"

.field public static final SECURITY_EVENT_CODE_BASE:I = 0x0

.field public static final SMS_EVENT_CODE_BASE:I = 0x190

.field public static final STATE_CODE_REG_AUTH_FAILED:I = 0x3

.field public static final STATE_CODE_REG_NATIVE_FAILED:I = 0x2

.field public static final STATE_CODE_REG_PING_FAILED:I = 0x1

.field public static final STATE_CODE_SECURITY_AUTH_FAILED:I = -0x2

.field public static final STATE_CODE_SECURITY_INVALID_ID:I = -0x1

.field public static final STATE_CODE_SECURITY_LOCAL_IP_IS_NULL:I = -0x3

.field public static final STATE_CODE_SECURITY_NO_REQUEST:I = -0x4

.field public static final STATE_CODE_SECURITY_STOP_TIMEOUT:I = -0x5

.field public static final USE_IP4:I = 0x0

.field public static final USE_IP6:I = 0x1

.field public static final UT_CB_DIR_INCOMING:I = 0x1

.field public static final UT_CB_DIR_OUTGOING:I = 0x2

.field public static final UT_CB_DIR_UNKNOWN:I = 0x0

.field public static final UT_EVENT_CODE_BASE:I = 0x15e

.field public static final VIDEO_EVENT_CODE_BASE:I = 0x12c

.field public static final VOICE_EVENT_CODE_BASE:I = 0x118


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
