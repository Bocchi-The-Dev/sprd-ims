.class public Lcom/spreadtrum/ims/ImsRadioIndication;
.super Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;
.source "ImsRadioIndication.java"


# static fields
.field private static DELEGATE_REGISTRATION_REGISTERED:I


# instance fields
.field mRil:Lcom/spreadtrum/ims/ImsRadioInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/spreadtrum/ims/ImsRadioIndication;->DELEGATE_REGISTRATION_REGISTERED:I

    return-void
.end method

.method constructor <init>(Lcom/spreadtrum/ims/ImsRadioInterface;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 50
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

    .line 246
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    .line 247
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 248
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
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

    .line 254
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 255
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 256
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    return-object v1
.end method

.method public static arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 215
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 216
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method

.method private convertFeatureTagStateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    .line 579
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;

    .line 582
    iget v2, v1, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;->state:I

    sget v3, Lcom/spreadtrum/ims/ImsRadioIndication;->DELEGATE_REGISTRATION_REGISTERED:I

    if-ne v2, v3, :cond_0

    .line 583
    new-instance v2, Landroid/telephony/ims/FeatureTagState;

    iget-object v1, v1, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;->featureTag:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    :cond_0
    new-instance v2, Landroid/telephony/ims/FeatureTagState;

    iget-object v3, v1, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;->featureTag:Ljava/lang/String;

    iget v1, v1, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;->reason:I

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_1
    goto :goto_0

    .line 588
    :cond_1
    return-object v0
.end method

.method private convertSipDelegateImsConfiguration(Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;)Landroid/telephony/ims/SipDelegateConfiguration;
    .locals 10

    .line 518
    iget-object v0, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->protocl_type:Ljava/lang/String;

    .line 519
    const-string v1, "UDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 521
    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 522
    :goto_0
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const-wide/16 v2, 0x1

    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_ipaddress:Ljava/lang/String;

    iget v5, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_default_port_int:I

    .line 523
    invoke-direct {p0, v1, v5}, Lcom/spreadtrum/ims/ImsRadioIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_ipaddress:Ljava/lang/String;

    iget v6, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_default_port_int:I

    .line 524
    invoke-direct {p0, v1, v6}, Lcom/spreadtrum/ims/ImsRadioIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 525
    iget-boolean v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_compact_form_enabled_bool:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 526
    iget-boolean v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_keepalive_enabled_bool:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipKeepaliveEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 527
    iget v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->udp_max_payload_size_int:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 528
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 529
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_private_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 530
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->home_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 531
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 532
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->auhentication_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 533
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->authentication_nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 534
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->service_route_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 535
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->path_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPathHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 536
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->sip_user_agent_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 537
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->uri_user_part:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 538
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 539
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_last_access_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 540
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->cellular_network_info_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 541
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->p_associated_uri_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 543
    iget-boolean v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_gruu_enabled_bool:Z

    if-eqz v1, :cond_1

    .line 544
    nop

    .line 545
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_gruu:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 551
    :cond_1
    iget-boolean v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_ipsec_enabled_bool:Z

    if-eqz v1, :cond_2

    .line 552
    new-instance v1, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_client_port_int:I

    iget v4, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_server_port_int:I

    iget v5, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_ipsec_old_client_port_int:I

    iget v6, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_client_port_int:I

    iget v7, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_server_port_int:I

    iget v8, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->server_ipsec_old_client_port_int:I

    iget-object v9, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->security_verify_header:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 563
    :cond_2
    iget-boolean v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->is_nat_enabled_bool:Z

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_ipaddress_with_nat:Ljava/lang/String;

    iget p1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->ue_public_port_with_nat_int:I

    invoke-direct {p0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioIndication;->getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setNatSocketAddress(Ljava/net/InetSocketAddress;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 569
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private convertSipMessage(Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)Landroid/telephony/ims/SipMessage;
    .locals 4

    .line 505
    iget-object v0, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->content:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSipMessage, viaBranchParam from cp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->viaBranch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "viaBranchParam parsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 508
    invoke-static {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callIdParam from cp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callIdParam parsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    .line 511
    invoke-static {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-virtual {v1, v2}, Lcom/spreadtrum/ims/ImsRadioInterface;->riljLogv(Ljava/lang/String;)V

    .line 512
    new-instance v1, Landroid/telephony/ims/SipMessage;

    iget-object v2, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->startLine:Ljava/lang/String;

    iget-object p1, p1, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->headerSection:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v1
.end method

.method private getRadioStateFromInt(I)I
    .locals 3

    .line 65
    nop

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 67
    move v0, v1

    goto :goto_0

    .line 68
    :cond_0
    if-ne p1, v0, :cond_1

    .line 69
    const/4 v0, 0x2

    goto :goto_0

    .line 70
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 71
    goto :goto_0

    .line 70
    :cond_2
    move v0, v1

    .line 73
    :goto_0
    return v0
.end method

.method private getSocketAddr(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 1

    .line 573
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method public IMSHandoverStateChangedInd(III)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 346
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x233d

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 350
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 351
    const/4 p1, 0x2

    new-array p1, p1, [I

    aput p2, p1, v1

    const/4 p2, 0x1

    aput p3, p1, p2

    .line 352
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsHandoverStateRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 354
    :cond_0
    return-void
.end method

.method public ImsBearerEstablished(II)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 138
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x232e

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 145
    :cond_0
    return-void
.end method

.method public ImsCallStateChanged(I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 127
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 128
    const/16 v0, 0x232d

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 131
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 134
    :cond_0
    return-void
.end method

.method public ImsConfigurationChangedInd(ILvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 482
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 483
    const/16 v0, 0x2347

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 486
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 487
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->convertSipDelegateImsConfiguration(Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;)Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    .line 488
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsConfigurationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 490
    :cond_0
    return-void
.end method

.method public ImsCsfbVendorCauseInd(ILjava/lang/String;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 274
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 275
    const/16 v0, 0x2337

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 281
    :cond_0
    return-void
.end method

.method public ImsErrorCauseInd(ILvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 263
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 264
    const/16 v0, 0x2336

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 267
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsErrorCauseRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 270
    :cond_0
    return-void
.end method

.method public ImsHandoverRequestInd(II)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 171
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2331

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverRequestRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 178
    :cond_0
    return-void
.end method

.method public ImsHandoverStatusChanged(II)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 182
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2332

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsHandoverStatusRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 189
    :cond_0
    return-void
.end method

.method public ImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 193
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 194
    const/16 v0, 0x2333

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 197
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 200
    :cond_0
    return-void
.end method

.method public ImsNetworkStateChanged(II)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 160
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2330

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 167
    :cond_0
    return-void
.end method

.method public ImsNewSmsStatusReportInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 235
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 236
    const/16 v0, 0x2339

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 239
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolImsNewSmsStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToByteArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 242
    :cond_0
    return-void
.end method

.method public ImsRegisterAddressChanged(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 204
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 205
    const/16 v0, 0x2334

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 208
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsRegAddressRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 211
    :cond_0
    return-void
.end method

.method public ImsWifiParamInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 223
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 224
    const/16 v0, 0x2335

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 227
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsWiFiParamRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 230
    :cond_0
    return-void
.end method

.method public RttCPSCapabilityChangeInd(III)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 307
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 308
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x233a

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 312
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 313
    aput p2, p1, v1

    .line 314
    const/4 p2, 0x1

    aput p3, p1, p2

    .line 315
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttCPSCapabilityChangeRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 317
    :cond_0
    return-void
.end method

.method public RttMessageReceived(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 321
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 322
    const/16 v0, 0x233b

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 325
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRttMessageReceivedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToByteArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 328
    :cond_0
    return-void
.end method

.method public airPlaneModeExitRequestInd(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 359
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 360
    const/16 v0, 0x233e

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 363
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolAirPlaneModeExitRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 366
    :cond_0
    return-void
.end method

.method public callStateChanged(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 79
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 81
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 82
    return-void
.end method

.method public earlyMediaInd(II)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 285
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2338

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 292
    :cond_0
    return-void
.end method

.method public featureTagRegistrationChangedInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;",
            ">;)V"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 494
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 495
    const/16 v0, 0x2347

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 498
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 499
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->convertFeatureTagStateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 500
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolFeatureTagRegistrationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 502
    :cond_0
    return-void
.end method

.method public holdToneInd(II)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 296
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x234a

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 300
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolHoldToneRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 303
    :cond_0
    return-void
.end method

.method public notifyCapabilitiesChangedInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 409
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 410
    const/16 v0, 0x2342

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 413
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolCapabilitiesChanged:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 416
    :cond_0
    return-void
.end method

.method public onImsUssd(IILjava/lang/String;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 592
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 593
    const/16 v0, 0x2349

    invoke-virtual {p1, v0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 597
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 599
    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 601
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    if-eqz p2, :cond_0

    .line 602
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolOnImsUssdRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 604
    :cond_0
    return-void
.end method

.method public onRemoteCapabilitiesDemandInd(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 395
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 396
    const/16 v0, 0x2341

    invoke-virtual {p1, v0, p3}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 399
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 400
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 401
    aput-object p2, p1, v1

    .line 402
    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 403
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRemoteCapabilitiesRequest:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 405
    :cond_0
    return-void
.end method

.method public onResourceTerminatedInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/ims/V1_1/TerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 420
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 421
    const/16 v0, 0x2343

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolResourceTerminated:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onTerminatedInd(ILjava/lang/String;J)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 442
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 443
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0x2344

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 446
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 447
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 448
    aput-object p2, p1, v1

    .line 449
    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    .line 450
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolTerminated:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 452
    :cond_0
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 55
    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->getRadioStateFromInt(I)I

    move-result p1

    .line 57
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {p2, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogMore(ILjava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    invoke-virtual {p2, p1, v1}, Lcom/spreadtrum/ims/ImsRadioInterface;->setRadioState(IZ)V

    .line 62
    return-void
.end method

.method public receiveSipMessageInd(ILvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 471
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 472
    const/16 v0, 0x2346

    invoke-virtual {p1, v0, p2}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 475
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolReceiveSipMessageRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {p0, p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->convertSipMessage(Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)Landroid/telephony/ims/SipMessage;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 478
    :cond_0
    return-void
.end method

.method public sendSipMessageResultInd(IILjava/lang/String;I)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 456
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 457
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2345

    invoke-virtual {p1, v2, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 460
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 461
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 463
    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 464
    const/4 p2, 0x2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 465
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolSendSipMessageResultRegistrants:Landroid/os/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 467
    :cond_0
    return-void
.end method

.method public simMgrSimStatusChangedInd(II)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 431
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 432
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2348

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 435
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 438
    :cond_0
    return-void
.end method

.method public simRefresh(ILvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 114
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 115
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 116
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 117
    iget-object p2, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 119
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232c

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 122
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 87
    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 88
    aput p2, p1, v1

    .line 90
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232a

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 93
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 95
    return-void
.end method

.method public suppSvcNotify(ILvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 100
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 101
    iget-boolean v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 102
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 103
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 104
    iget v0, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 105
    iget-object p2, p2, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 107
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/16 v0, 0x232b

    invoke-virtual {p2, v0, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 108
    iget-object p2, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p2, p2, Lcom/spreadtrum/ims/ImsRadioInterface;->mSsnRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 109
    return-void
.end method

.method public videoQualityInd(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 149
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 150
    const/16 v0, 0x232f

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLog(I)V

    .line 153
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mImsVideoQosRegistrant:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Lcom/spreadtrum/ims/ImsRadioIndication;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 156
    :cond_0
    return-void
.end method

.method public voWifiAttachStateChangedInd(II)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 334
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x233c

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiAttachStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 341
    :cond_0
    return-void
.end method

.method public voWifiEmergencyAttachStateChangedInd(II)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 383
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2340

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 387
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVoWifiEmergencyAttachStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 390
    :cond_0
    return-void
.end method

.method public volteEmergencyBearerStateChangedInd(II)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/spreadtrum/ims/ImsRadioInterface;->processIndication(II)V

    .line 371
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x233f

    invoke-virtual {p1, v1, v0}, Lcom/spreadtrum/ims/ImsRadioInterface;->unsljLogRet(ILjava/lang/Object;)V

    .line 375
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsRadioIndication;->mRil:Lcom/spreadtrum/ims/ImsRadioInterface;

    iget-object p1, p1, Lcom/spreadtrum/ims/ImsRadioInterface;->mUnsolVolteEmergencyBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 378
    :cond_0
    return-void
.end method
