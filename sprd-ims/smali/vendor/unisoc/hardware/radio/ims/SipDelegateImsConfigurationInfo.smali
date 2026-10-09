.class public Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;
.super Ljava/lang/Object;
.source "SipDelegateImsConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    .line 8
    iput-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    .line 9
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    .line 17
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 19
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 20
    iput-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    .line 22
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    .line 23
    iput-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    .line 25
    iput-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    .line 26
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    .line 27
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    .line 28
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    .line 29
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    .line 30
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    .line 31
    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 189
    nop

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_49

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 182
    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 182
    :cond_2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 182
    :cond_4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 182
    :cond_6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 182
    :cond_8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 182
    :cond_a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 182
    :cond_c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 182
    :cond_e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 182
    :cond_10
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 182
    :cond_12
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-void

    .line 182
    :cond_14
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    return-void

    .line 182
    :cond_16
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    return-void

    .line 182
    :cond_18
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 134
    return-void

    .line 182
    :cond_1a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    return-void

    .line 182
    :cond_1c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void

    .line 182
    :cond_1e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return-void

    .line 182
    :cond_20
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_22

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    return-void

    .line 182
    :cond_22
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_24

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    return-void

    .line 182
    :cond_24
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_27

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_26

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    return-void

    .line 182
    :cond_26
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_29

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    return-void

    .line 182
    :cond_28
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2b

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    return-void

    .line 182
    :cond_2a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2d

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2c

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 182
    :cond_2c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2d
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 182
    :cond_2e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_30

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 182
    :cond_30
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_33

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_32

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 182
    :cond_32
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_33
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_35

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    return-void

    .line 182
    :cond_34
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_35
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_37

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 162
    return-void

    .line 182
    :cond_36
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_37
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_39

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_38

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 164
    return-void

    .line 182
    :cond_38
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_39
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3b

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    return-void

    .line 182
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_3b
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3d

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    return-void

    .line 182
    :cond_3c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_3d
    :try_start_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3f

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    return-void

    .line 182
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_3f
    :try_start_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 172
    return-void

    .line 182
    :cond_40
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_41
    :try_start_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_43

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_42

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 174
    return-void

    .line 182
    :cond_42
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_43
    :try_start_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_45

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_44

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    return-void

    .line 182
    :cond_44
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_45
    :try_start_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_47

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_46

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    return-void

    .line 182
    :cond_46
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_47
    :try_start_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 181
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_48

    .line 184
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 185
    nop

    .line 186
    return-void

    .line 182
    :cond_48
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 107
    :cond_49
    :try_start_25
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 181
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4a

    .line 182
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_4a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 185
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    iget-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->iptype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 78
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void
.end method
