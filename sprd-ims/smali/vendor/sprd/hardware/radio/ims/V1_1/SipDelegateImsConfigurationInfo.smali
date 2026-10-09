.class public final Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;
.super Ljava/lang/Object;
.source "SipDelegateImsConfigurationInfo.java"


# instance fields
.field public auhentication_header:Ljava/lang/String;

.field public authentication_nonce:Ljava/lang/String;

.field public cellular_network_info_header:Ljava/lang/String;

.field public home_domain:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public iptype:Ljava/lang/String;

.field public is_compact_form_enabled_bool:Z

.field public is_gruu_enabled_bool:Z

.field public is_ipsec_enabled_bool:Z

.field public is_keepalive_enabled_bool:Z

.field public is_nat_enabled_bool:Z

.field public p_access_network_info_header:Ljava/lang/String;

.field public p_associated_uri_header:Ljava/lang/String;

.field public p_last_access_network_info_header:Ljava/lang/String;

.field public path_header:Ljava/lang/String;

.field public protocl_type:Ljava/lang/String;

.field public security_verify_header:Ljava/lang/String;

.field public server_default_ipaddress:Ljava/lang/String;

.field public server_default_port_int:I

.field public server_ipsec_client_port_int:I

.field public server_ipsec_old_client_port_int:I

.field public server_ipsec_server_port_int:I

.field public service_route_header:Ljava/lang/String;

.field public sip_user_agent_header:Ljava/lang/String;

.field public udp_max_payload_size_int:I

.field public ue_default_ipaddress:Ljava/lang/String;

.field public ue_default_port_int:I

.field public ue_ipsec_client_port_int:I

.field public ue_ipsec_old_client_port_int:I

.field public ue_ipsec_server_port_int:I

.field public ue_private_user_id:Ljava/lang/String;

.field public ue_public_gruu:Ljava/lang/String;

.field public ue_public_ipaddress_with_nat:Ljava/lang/String;

.field public ue_public_port_with_nat_int:I

.field public ue_public_user_id:Ljava/lang/String;

.field public uri_user_part:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    .line 52
    iput-boolean v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    .line 56
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    .line 60
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    .line 67
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 71
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    .line 72
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 76
    iput-boolean v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    .line 80
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    .line 81
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    .line 85
    iput-boolean v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    .line 89
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    .line 90
    iput-boolean v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    .line 94
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    .line 98
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    .line 102
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    .line 106
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    .line 110
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    .line 114
    iput v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 384
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 385
    mul-int/lit16 v3, v2, 0x190

    int-to-long v5, v3

    .line 386
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 385
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 391
    new-instance v4, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;

    invoke-direct {v4}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;-><init>()V

    .line 392
    mul-int/lit16 v5, v3, 0x190

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 393
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;",
            ">;)V"
        }
    .end annotation

    .line 574
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 577
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 578
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 579
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x190

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 580
    nop

    :goto_0
    if-ge v4, v1, :cond_0

    .line 581
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;

    mul-int/lit16 v5, v4, 0x190

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 580
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 586
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 587
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 136
    return v1

    .line 138
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;

    if-eq v2, v3, :cond_2

    .line 139
    return v1

    .line 141
    :cond_2
    check-cast p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;

    .line 142
    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    iget-boolean v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    if-eq v2, v3, :cond_3

    .line 143
    return v1

    .line 145
    :cond_3
    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    iget-boolean v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    if-eq v2, v3, :cond_4

    .line 146
    return v1

    .line 148
    :cond_4
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    if-eq v2, v3, :cond_5

    .line 149
    return v1

    .line 151
    :cond_5
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 152
    return v1

    .line 154
    :cond_6
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 155
    return v1

    .line 157
    :cond_7
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 158
    return v1

    .line 160
    :cond_8
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 161
    return v1

    .line 163
    :cond_9
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 164
    return v1

    .line 166
    :cond_a
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 167
    return v1

    .line 169
    :cond_b
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 170
    return v1

    .line 172
    :cond_c
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    if-eq v2, v3, :cond_d

    .line 173
    return v1

    .line 175
    :cond_d
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 176
    return v1

    .line 178
    :cond_e
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    if-eq v2, v3, :cond_f

    .line 179
    return v1

    .line 181
    :cond_f
    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    iget-boolean v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    if-eq v2, v3, :cond_10

    .line 182
    return v1

    .line 184
    :cond_10
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 185
    return v1

    .line 187
    :cond_11
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    if-eq v2, v3, :cond_12

    .line 188
    return v1

    .line 190
    :cond_12
    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    iget-boolean v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    if-eq v2, v3, :cond_13

    .line 191
    return v1

    .line 193
    :cond_13
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 194
    return v1

    .line 196
    :cond_14
    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    iget-boolean v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    if-eq v2, v3, :cond_15

    .line 197
    return v1

    .line 199
    :cond_15
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    if-eq v2, v3, :cond_16

    .line 200
    return v1

    .line 202
    :cond_16
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    if-eq v2, v3, :cond_17

    .line 203
    return v1

    .line 205
    :cond_17
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    if-eq v2, v3, :cond_18

    .line 206
    return v1

    .line 208
    :cond_18
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    if-eq v2, v3, :cond_19

    .line 209
    return v1

    .line 211
    :cond_19
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    if-eq v2, v3, :cond_1a

    .line 212
    return v1

    .line 214
    :cond_1a
    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    if-eq v2, v3, :cond_1b

    .line 215
    return v1

    .line 217
    :cond_1b
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 218
    return v1

    .line 220
    :cond_1c
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 221
    return v1

    .line 223
    :cond_1d
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 224
    return v1

    .line 226
    :cond_1e
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 227
    return v1

    .line 229
    :cond_1f
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 230
    return v1

    .line 232
    :cond_20
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 233
    return v1

    .line 235
    :cond_21
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 236
    return v1

    .line 238
    :cond_22
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 239
    return v1

    .line 241
    :cond_23
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 242
    return v1

    .line 244
    :cond_24
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 245
    return v1

    .line 247
    :cond_25
    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 248
    return v1

    .line 250
    :cond_26
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 255
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    .line 256
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 259
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    .line 260
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    .line 261
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    .line 262
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    .line 263
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    .line 264
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    .line 265
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    .line 267
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    .line 270
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    .line 273
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    .line 274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    .line 281
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    .line 282
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    .line 283
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    .line 284
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    .line 285
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    .line 286
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    .line 287
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    .line 288
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    .line 289
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    .line 290
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    .line 291
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 255
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    .line 402
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    .line 403
    const-wide/16 v4, 0x1

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    .line 404
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    .line 405
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 407
    nop

    .line 408
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 407
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 412
    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    .line 414
    nop

    .line 415
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 414
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 419
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    .line 421
    nop

    .line 422
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 421
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 426
    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    .line 428
    nop

    .line 429
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 428
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 433
    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    .line 435
    nop

    .line 436
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 435
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 440
    const-wide/16 v4, 0x58

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    .line 442
    nop

    .line 443
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 442
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 447
    const-wide/16 v4, 0x68

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    .line 449
    nop

    .line 450
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 449
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 454
    const-wide/16 v4, 0x78

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 455
    const-wide/16 v4, 0x80

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    .line 457
    nop

    .line 458
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 457
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 462
    const-wide/16 v4, 0x90

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 463
    const-wide/16 v4, 0x94

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    .line 464
    const-wide/16 v4, 0x98

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    .line 466
    nop

    .line 467
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 466
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 471
    const-wide/16 v4, 0xa8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    .line 472
    const-wide/16 v4, 0xac

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    .line 473
    const-wide/16 v4, 0xb0

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    .line 475
    nop

    .line 476
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 475
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 480
    const-wide/16 v4, 0xc0

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    .line 481
    const-wide/16 v4, 0xc4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    .line 482
    const-wide/16 v4, 0xc8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    .line 483
    const-wide/16 v4, 0xcc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    .line 484
    const-wide/16 v4, 0xd0

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    .line 485
    const-wide/16 v4, 0xd4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    .line 486
    const-wide/16 v4, 0xd8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    .line 487
    const-wide/16 v4, 0xe0

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    .line 489
    nop

    .line 490
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 489
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 494
    const-wide/16 v4, 0xf0

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    .line 496
    nop

    .line 497
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 496
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 501
    const-wide/16 v4, 0x100

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    .line 503
    nop

    .line 504
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 503
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 508
    const-wide/16 v4, 0x110

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    .line 510
    nop

    .line 511
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 510
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 515
    const-wide/16 v4, 0x120

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    .line 517
    nop

    .line 518
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 517
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 522
    const-wide/16 v4, 0x130

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    .line 524
    nop

    .line 525
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 524
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 529
    const-wide/16 v4, 0x140

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    .line 531
    nop

    .line 532
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 531
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 536
    const-wide/16 v4, 0x150

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    .line 538
    nop

    .line 539
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 538
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 543
    const-wide/16 v4, 0x160

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    .line 545
    nop

    .line 546
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 545
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 550
    const-wide/16 v4, 0x170

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    .line 552
    nop

    .line 553
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 552
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 557
    const-wide/16 v4, 0x180

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    .line 559
    nop

    .line 560
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v4, v2

    .line 559
    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 564
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 375
    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 376
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 377
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, ".is_compact_form_enabled_bool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ", .is_keepalive_enabled_bool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", .udp_max_payload_size_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, ", .protocl_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ", .ue_public_user_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ", .ue_private_user_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ", .home_domain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ", .imei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ", .iptype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", .ue_default_ipaddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", .ue_default_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ", .server_default_ipaddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ", .server_default_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", .is_nat_enabled_bool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", .ue_public_ipaddress_with_nat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", .ue_public_port_with_nat_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", .is_gruu_enabled_bool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", .ue_public_gruu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", .is_ipsec_enabled_bool = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-boolean v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", .ue_ipsec_client_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, ", .ue_ipsec_server_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, ", .ue_ipsec_old_client_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", .server_ipsec_client_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", .server_ipsec_server_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", .server_ipsec_old_client_port_int = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, ", .auhentication_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, ", .authentication_nonce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", .service_route_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ", .security_verify_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, ", .path_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, ", .sip_user_agent_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, ", .uri_user_part = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, ", .p_access_network_info_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, ", .p_last_access_network_info_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, ", .cellular_network_info_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, ", .p_associated_uri_header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 591
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 592
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 593
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 594
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 595
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 596
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 597
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 598
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 599
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 600
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 601
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 602
    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 603
    const-wide/16 v0, 0x90

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 604
    const-wide/16 v0, 0x94

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 605
    const-wide/16 v0, 0x98

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 606
    const-wide/16 v0, 0xa8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 607
    const-wide/16 v0, 0xac

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 608
    const-wide/16 v0, 0xb0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 609
    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 610
    const-wide/16 v0, 0xc4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 611
    const-wide/16 v0, 0xc8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 612
    const-wide/16 v0, 0xcc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 613
    const-wide/16 v0, 0xd0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 614
    const-wide/16 v0, 0xd4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 615
    const-wide/16 v0, 0xd8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 616
    const-wide/16 v0, 0xe0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 617
    const-wide/16 v0, 0xf0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 618
    const-wide/16 v0, 0x100

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 619
    const-wide/16 v0, 0x110

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 620
    const-wide/16 v0, 0x120

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 621
    const-wide/16 v0, 0x130

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 622
    const-wide/16 v0, 0x140

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 623
    const-wide/16 v0, 0x150

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 624
    const-wide/16 v0, 0x160

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 625
    const-wide/16 v0, 0x170

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 626
    const-wide/16 v0, 0x180

    add-long/2addr p2, v0

    iget-object v0, p0, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 627
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 567
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 568
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 569
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 570
    return-void
.end method
