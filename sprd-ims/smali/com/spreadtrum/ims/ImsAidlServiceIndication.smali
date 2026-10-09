.class public Lcom/spreadtrum/ims/ImsAidlServiceIndication;
.super Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;
.source "ImsAidlServiceIndication.java"


# static fields
.field private static DELEGATE_REGISTRATION_REGISTERED:I


# instance fields
.field mRil:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->DELEGATE_REGISTRATION_REGISTERED:I

    return-void
.end method

.method constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 51
    return-void
.end method

.method public static arrayListToByteArray(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    .line 265
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 266
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-object v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 273
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 274
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-object v1
.end method

.method private convertFeatureTagStateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    .line 639
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;

    .line 642
    iget v2, v1, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;->state:I

    sget v3, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->DELEGATE_REGISTRATION_REGISTERED:I

    if-ne v2, v3, :cond_0

    .line 643
    new-instance v2, Landroid/telephony/ims/FeatureTagState;

    iget-object v1, v1, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;->featureTag:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
    :cond_0
    new-instance v2, Landroid/telephony/ims/FeatureTagState;

    iget-object v3, v1, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;->featureTag:Ljava/lang/String;

    iget v1, v1, Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;->reason:I

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_1
    goto :goto_0

    .line 648
    :cond_1
    return-object v0
.end method

.method private convertSipDelegateImsConfiguration(Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;)Landroid/telephony/ims/SipDelegateConfiguration;
    .locals 10

    .line 576
    iget-object v0, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 577
    const-string v1, "UDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 579
    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 580
    :goto_0
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const-wide/16 v2, 0x1

    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    iget v5, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 581
    invoke-direct {p0, v1, v5}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    iget v6, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 583
    invoke-direct {p0, v1, v6}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 585
    iget-boolean v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 586
    iget-boolean v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipKeepaliveEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 587
    iget v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 588
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 589
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 590
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 591
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 592
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 593
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 594
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 595
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPathHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 596
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 597
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 598
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 599
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 600
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 601
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 603
    iget-boolean v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    if-eqz v1, :cond_1

    .line 604
    nop

    .line 605
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 607
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 611
    :cond_1
    iget-boolean v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    if-eqz v1, :cond_2

    .line 612
    new-instance v1, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget v3, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    iget v4, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    iget v5, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    iget v6, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    iget v7, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    iget v8, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    iget-object v9, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 623
    :cond_2
    iget-boolean v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    if-eqz v1, :cond_3

    .line 624
    iget-object v1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    iget p1, p1, Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    invoke-direct {p0, v1, p1}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setNatSocketAddress(Ljava/net/InetSocketAddress;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 629
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private convertSipMessage(Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;)Landroid/telephony/ims/SipMessage;
    .locals 4

    .line 563
    iget-object v0, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->content:[B

    .line 564
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSipMessage, viaBranchParam from cp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->viaBranch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "viaBranchParam parsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 566
    invoke-static {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callIdParam from cp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callIdParam parsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 569
    invoke-static {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLogv(Ljava/lang/String;)V

    .line 570
    new-instance v1, Landroid/telephony/ims/SipMessage;

    iget-object v2, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->startLine:Ljava/lang/String;

    iget-object p1, p1, Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;->headerSection:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v1
.end method

.method private getRadioStateFromInt(I)I
    .locals 3

    .line 68
    nop

    .line 69
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 70
    move v0, v1

    goto :goto_0

    .line 71
    :cond_0
    if-ne p1, v0, :cond_1

    .line 72
    const/4 v0, 0x2

    goto :goto_0

    .line 73
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 74
    goto :goto_0

    .line 73
    :cond_2
    move v0, v1

    .line 76
    :goto_0
    return v0
.end method

.method private getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 1

    .line 633
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method public IMSHandoverStateChangedInd(III)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 377
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 378
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x233d

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 381
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 382
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    aput p3, p1, v1

    .line 383
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 384
    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 386
    :cond_0
    return-void
.end method

.method public ImsBearerEstablished(II)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 145
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x232e

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 152
    :cond_0
    return-void
.end method

.method public ImsCallStateChanged(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 133
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 134
    const/16 v0, 0x232d

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 137
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 140
    :cond_0
    return-void
.end method

.method public ImsCallTextInfoInd(IIIILjava/lang/String;)V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 671
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 672
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x234d

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 675
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 676
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    .line 677
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 678
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 679
    const/4 p2, 0x2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 680
    const/4 p2, 0x3

    aput-object p5, p1, p2

    .line 681
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCallTextInforRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 683
    :cond_0
    return-void
.end method

.method public ImsConfigurationChangedInd(ILvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 534
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 535
    const/16 v0, 0x2347

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 538
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->convertSipDelegateImsConfiguration(Lvendor/unisoc/hardware/radio/ims/SipDelegateImsConfigurationInfo;)Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    .line 540
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 541
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 543
    :cond_0
    return-void
.end method

.method public ImsCsfbVendorCauseInd(ILjava/lang/String;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 295
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 296
    const/16 v0, 0x2337

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 303
    :cond_0
    return-void
.end method

.method public ImsErrorCauseInd(ILvendor/unisoc/hardware/radio/ims/ImsErrorCauseInfo;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 282
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 283
    const/16 v0, 0x2336

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 286
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 290
    :cond_0
    return-void
.end method

.method public ImsHandoverRequestInd(II)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 182
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2331

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 190
    :cond_0
    return-void
.end method

.method public ImsHandoverStatusChanged(II)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 195
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 196
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2332

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 202
    :cond_0
    return-void
.end method

.method public ImsNetworkInfoChanged(ILvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 207
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 208
    const/16 v0, 0x2333

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 211
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 214
    :cond_0
    return-void
.end method

.method public ImsNetworkStateChanged(II)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 169
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2330

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 177
    :cond_0
    return-void
.end method

.method public ImsNewSmsStatusReportInd(I[B)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 252
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 253
    const/16 v0, 0x2339

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 256
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 260
    :cond_0
    return-void
.end method

.method public ImsRegisterAddressChanged(I[Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 219
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 220
    const/16 v0, 0x2334

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 223
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 226
    :cond_0
    return-void
.end method

.method public ImsWifiParamInd(I[I)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 239
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 240
    const/16 v0, 0x2335

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 243
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 246
    :cond_0
    return-void
.end method

.method public RttCPSCapabilityChangeInd(III)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 332
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 333
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x233a

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 336
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 337
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 338
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 339
    aput p3, p1, v1

    .line 340
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 341
    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 343
    :cond_0
    return-void
.end method

.method public RttMessageReceived(I[B)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 348
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 349
    const/16 v0, 0x233b

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 352
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 356
    :cond_0
    return-void
.end method

.method public airPlaneModeExitRequestInd(I)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 392
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 393
    const/16 v0, 0x233e

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 396
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 399
    :cond_0
    return-void
.end method

.method public callStateChanged(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 83
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 85
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 86
    return-void
.end method

.method public ctccAutoSwitchInd(II)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 703
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 704
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x234b

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 707
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCtccAutoSwitchRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 710
    :cond_0
    return-void
.end method

.method public earlyMediaInd(II)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 308
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2338

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 312
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 315
    :cond_0
    return-void
.end method

.method public featureTagRegistrationChangedInd(I[Lvendor/unisoc/hardware/radio/ims/DelegateRegistrationStateInfo;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 549
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 550
    const/16 v0, 0x2347

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 553
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 554
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 556
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->convertFeatureTagStateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 557
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 558
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 560
    :cond_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 714
    const-string v0, "f53a892d42fdfb0cbd0c5a33c747541660d182d8"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public holdToneInd(II)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 320
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x234a

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 324
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 327
    :cond_0
    return-void
.end method

.method public notifyCapabilitiesChangedInd(I[Ljava/lang/String;)V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 450
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 451
    const/16 v0, 0x2342

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 457
    :cond_0
    return-void
.end method

.method public onImsUssd(IILjava/lang/String;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 654
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 655
    const/16 v0, 0x2349

    invoke-virtual {p1, v0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 659
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 661
    aput-object p3, p1, v1

    .line 663
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    if-eqz p2, :cond_0

    .line 664
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 666
    :cond_0
    return-void
.end method

.method public onRemoteCapabilitiesDemandInd(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 434
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 435
    const/16 v0, 0x2341

    invoke-virtual {p1, v0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 438
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 439
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 440
    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 441
    aput-object p3, p1, v1

    .line 442
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 443
    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 445
    :cond_0
    return-void
.end method

.method public onResourceTerminatedInd(I[Lvendor/unisoc/hardware/radio/ims/TerminatedReason;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 462
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 463
    const/16 v0, 0x2343

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 466
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 468
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onTerminatedInd(ILjava/lang/String;J)V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 488
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 489
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0x2344

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 492
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 493
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 494
    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 495
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    .line 496
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 498
    :cond_0
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 57
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->getRadioStateFromInt(I)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2328

    invoke-virtual {p2, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogMore(ILjava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRadioState(IZ)V

    .line 65
    return-void
.end method

.method public receiveSipMessageInd(ILvendor/unisoc/hardware/radio/ims/RcsSipMessage;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 521
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 522
    const/16 v0, 0x2346

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 525
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 527
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->convertSipMessage(Lvendor/unisoc/hardware/radio/ims/RcsSipMessage;)Landroid/telephony/ims/SipMessage;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 529
    :cond_0
    return-void
.end method

.method public sendSipMessageResultInd(IILjava/lang/String;I)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 504
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 505
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2345

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 508
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 509
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 511
    aput-object p3, p1, v1

    .line 512
    const/4 p2, 0x2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 513
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 514
    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 516
    :cond_0
    return-void
.end method

.method public simMgrSimStatusChangedInd(II)V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 475
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2348

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 479
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 481
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 483
    :cond_0
    return-void
.end method

.method public simRefresh(ILvendor/unisoc/hardware/radio/ims/SimRefreshResult;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 120
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 121
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 122
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 123
    iget-object p2, p2, Lvendor/unisoc/hardware/radio/ims/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 125
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232c

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 127
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 128
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 92
    new-array p1, v1, [I

    .line 93
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 95
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232a

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 99
    return-void
.end method

.method public subscriberAssociatedUriChangedInd(I[Ljava/lang/String;)V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 689
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 690
    const/16 v0, 0x234c

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 693
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 694
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSubscriberAssociatedUriChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 695
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 697
    :cond_0
    return-void
.end method

.method public suppSvcNotify(ILvendor/unisoc/hardware/radio/ims/SuppSvcNotification;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 105
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 106
    iget-boolean v0, p2, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 107
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 108
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 109
    iget v0, p2, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 110
    iget-object p2, p2, Lvendor/unisoc/hardware/radio/ims/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 112
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232b

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mSsnRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 114
    return-void
.end method

.method public videoQualityInd(I[I)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 157
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 158
    const/16 v0, 0x232f

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 161
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 164
    :cond_0
    return-void
.end method

.method public voWifiAttachStateChangedInd(II)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 363
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 364
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x233c

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 367
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 369
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 371
    :cond_0
    return-void
.end method

.method public voWifiEmergencyAttachStateChangedInd(II)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 419
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2340

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 423
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 427
    :cond_0
    return-void
.end method

.method public volteEmergencyBearerStateChangedInd(II)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 405
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 406
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x233f

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 409
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsAidlServiceIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 413
    :cond_0
    return-void
.end method
