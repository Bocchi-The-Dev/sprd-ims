.class public abstract Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2000
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2003
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2017
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2055
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2056
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2057
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2058
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2059
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 2029
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x6t
        -0x72t
        -0x5ct
        0x49t
        -0x6et
        -0x3ct
        0x20t
        -0x1ft
        -0x1ct
        0x2ct
        -0x28t
        0x2bt
        0x30t
        0x78t
        -0x44t
        0x59t
        0x7et
        -0x41t
        0x5at
        -0x1ft
        0x5dt
        0x74t
        0x75t
        0x69t
        -0x6at
        -0x21t
        -0x30t
        0x29t
        -0x48t
        -0x13t
        -0x5bt
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        0x4at
        -0x7ft
        0x77t
        -0x10t
        -0x76t
        -0x62t
        0x0t
        0x18t
        0x63t
        -0xft
        -0x28t
        -0x35t
        -0x27t
        0x68t
        0x1dt
        0x25t
        0x7ft
        0x5t
        0x2dt
        0x3t
        -0x36t
        -0x35t
        -0x2dt
        -0x13t
        0x69t
        0x3at
        0x36t
        0x6ct
        -0x66t
        -0x3et
        0x6ft
        0x34t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2008
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioResponse"

    const-string v2, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2023
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 2043
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2065
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2067
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2095
    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioResponse"

    const-string v2, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 3200
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 3203
    goto/16 :goto_1

    .line 3189
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 3192
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3193
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3195
    goto/16 :goto_1

    .line 3179
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ping()V

    .line 3182
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3183
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3184
    goto/16 :goto_1

    .line 3174
    :sswitch_3
    goto/16 :goto_1

    .line 3166
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 3169
    goto/16 :goto_1

    .line 3132
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3134
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 3135
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3137
    new-instance p2, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 3139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3140
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3141
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3142
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3143
    nop

    :goto_0
    if-ge p4, v0, :cond_1

    .line 3145
    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 3146
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 3148
    if-eqz v4, :cond_0

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 3152
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3153
    nop

    .line 3143
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 3149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3156
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3158
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3161
    goto/16 :goto_1

    .line 3121
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 3124
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3125
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3127
    goto/16 :goto_1

    .line 3109
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 3112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3113
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3114
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3116
    goto/16 :goto_1

    .line 3098
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 3101
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3102
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3104
    goto/16 :goto_1

    .line 3088
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3090
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3091
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3092
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setLocalToneResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3093
    goto/16 :goto_1

    .line 3078
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3080
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3081
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3082
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->closeDialogResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3083
    goto/16 :goto_1

    .line 3068
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3070
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3071
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3072
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->triggerFullNetworkRegistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3073
    goto/16 :goto_1

    .line 3058
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3060
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3061
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3062
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->triggerSipDelegateDeregistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3063
    goto/16 :goto_1

    .line 3048
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3050
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3051
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3052
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->updateSipDelegateRegistrationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3053
    goto/16 :goto_1

    .line 3038
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3041
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3042
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->sendSipMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 3043
    goto/16 :goto_1

    .line 3026
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3028
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3029
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3030
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;-><init>()V

    .line 3031
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3032
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->sendOptionsCapabilityRequestResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/OptionsResponseInfo;)V

    .line 3033
    goto/16 :goto_1

    .line 3014
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3016
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3017
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3018
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;-><init>()V

    .line 3019
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3020
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->subscribeForCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V

    .line 3021
    goto/16 :goto_1

    .line 3002
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 3005
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3006
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;-><init>()V

    .line 3007
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3008
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->publishCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/PublishAndSubscribeResponseInfo;)V

    .line 3009
    goto/16 :goto_1

    .line 2991
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2993
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2994
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2995
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesResponseInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2996
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setUceCapabilitiesResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2997
    goto/16 :goto_1

    .line 2979
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2981
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2982
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2983
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;-><init>()V

    .line 2984
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2985
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->bootstrapAuthenticationResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_1/GbaResult;)V

    .line 2986
    goto/16 :goto_1

    .line 2969
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2971
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2972
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2973
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setCarrierImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2974
    goto/16 :goto_1

    .line 2958
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2961
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2963
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2964
    goto/16 :goto_1

    .line 2947
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2949
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2950
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2952
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsStackVersionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2953
    goto/16 :goto_1

    .line 2937
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2939
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2940
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2941
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyVoWifiWhiteListResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2942
    goto/16 :goto_1

    .line 2926
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2928
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2929
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2931
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2932
    goto/16 :goto_1

    .line 2916
    :sswitch_19
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2919
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2920
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->sendRTTMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2921
    goto/16 :goto_1

    .line 2906
    :sswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2908
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2909
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2910
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setRTTChannelEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2911
    goto/16 :goto_1

    .line 2896
    :sswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2898
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2899
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2900
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->emergencyDialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2901
    goto/16 :goto_1

    .line 2886
    :sswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2888
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2889
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2890
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->dialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2891
    goto/16 :goto_1

    .line 2875
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2877
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2878
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2880
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getRTTAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2881
    goto/16 :goto_1

    .line 2865
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2868
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2869
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setRTTEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2870
    goto/16 :goto_1

    .line 2855
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2857
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2858
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2859
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2860
    goto/16 :goto_1

    .line 2845
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2847
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2848
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2849
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->holdActiveCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2850
    goto/16 :goto_1

    .line 2834
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2836
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2837
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2839
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2840
    goto/16 :goto_1

    .line 2823
    :sswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2826
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2828
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2829
    goto/16 :goto_1

    .line 2813
    :sswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2816
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2817
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2818
    goto/16 :goto_1

    .line 2803
    :sswitch_24
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2805
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2806
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2807
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2808
    goto/16 :goto_1

    .line 2792
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2794
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2795
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2797
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2798
    goto/16 :goto_1

    .line 2782
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2784
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2785
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2786
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2787
    goto/16 :goto_1

    .line 2771
    :sswitch_27
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2773
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2774
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2776
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2777
    goto/16 :goto_1

    .line 2760
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2762
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2763
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2765
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getSrvccCapbilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2766
    goto/16 :goto_1

    .line 2748
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2750
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2751
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2752
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 2753
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2754
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsPaniInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 2755
    goto/16 :goto_1

    .line 2737
    :sswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2740
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2742
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2743
    goto/16 :goto_1

    .line 2727
    :sswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2729
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2730
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2731
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->callMediaChangeRequestTimeOutResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2732
    goto/16 :goto_1

    .line 2717
    :sswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2719
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2720
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2721
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->enableWiFiParamReportResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2722
    goto/16 :goto_1

    .line 2707
    :sswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2709
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2710
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2711
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->enableLocalHoldResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2712
    goto/16 :goto_1

    .line 2697
    :sswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2699
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2700
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2701
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2702
    goto/16 :goto_1

    .line 2686
    :sswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2688
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2689
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2691
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2692
    goto/16 :goto_1

    .line 2676
    :sswitch_30
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2678
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2679
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2680
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyHandoverCallInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2681
    goto/16 :goto_1

    .line 2666
    :sswitch_31
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2668
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2669
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2670
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyDataRouterUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2671
    goto/16 :goto_1

    .line 2656
    :sswitch_32
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2659
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2660
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyVoWifiCallStateChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2661
    goto/16 :goto_1

    .line 2646
    :sswitch_33
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2648
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2649
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2650
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyVoWifiEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2651
    goto/16 :goto_1

    .line 2635
    :sswitch_34
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2638
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2640
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsBearerStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2641
    goto/16 :goto_1

    .line 2625
    :sswitch_35
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2628
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2629
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setImsSmscAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2630
    goto/16 :goto_1

    .line 2615
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2618
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2619
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setImsInitialAttachApnResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2620
    goto/16 :goto_1

    .line 2605
    :sswitch_37
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2608
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2609
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setCallForwardUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2610
    goto/16 :goto_1

    .line 2594
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2596
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2597
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2598
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2599
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getCallForwardStatusUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2600
    goto/16 :goto_1

    .line 2584
    :sswitch_39
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2586
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2587
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2588
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->updateCLIPResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2589
    goto/16 :goto_1

    .line 2573
    :sswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2576
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2578
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->queryColrResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2579
    goto/16 :goto_1

    .line 2562
    :sswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2565
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2567
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->queryColpResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2568
    goto/16 :goto_1

    .line 2552
    :sswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2555
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2556
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->responseVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2557
    goto/16 :goto_1

    .line 2542
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2545
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2546
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->requestVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2547
    goto/16 :goto_1

    .line 2531
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2534
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2536
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2537
    goto/16 :goto_1

    .line 2521
    :sswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2523
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2524
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2525
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2526
    goto/16 :goto_1

    .line 2511
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2513
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2514
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2515
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsEnableLocalConferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2516
    goto/16 :goto_1

    .line 2501
    :sswitch_41
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2504
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2505
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsSilenceSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2506
    goto/16 :goto_1

    .line 2491
    :sswitch_42
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2494
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2495
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsMuteSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2496
    goto/16 :goto_1

    .line 2481
    :sswitch_43
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2483
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2484
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2485
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsHoldSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2486
    goto/16 :goto_1

    .line 2471
    :sswitch_44
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2474
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2475
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyImsCallEndResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2476
    goto/16 :goto_1

    .line 2461
    :sswitch_45
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2464
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2465
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyImsNetworkInfoChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2466
    goto/16 :goto_1

    .line 2451
    :sswitch_46
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2453
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2454
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2455
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->notifyImsHandoverStatusUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2456
    goto/16 :goto_1

    .line 2441
    :sswitch_47
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2444
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2445
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsHandoverResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2446
    goto/16 :goto_1

    .line 2431
    :sswitch_48
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2434
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2435
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsAddGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2436
    goto/16 :goto_1

    .line 2421
    :sswitch_49
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2424
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2425
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->ImsInitialGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2426
    goto/16 :goto_1

    .line 2411
    :sswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2414
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2415
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->volteCallFallBackToVoiceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2416
    goto/16 :goto_1

    .line 2400
    :sswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2403
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2404
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2405
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsCurrentCallsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2406
    goto/16 :goto_1

    .line 2390
    :sswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2392
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2393
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2394
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->videoPhoneDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2395
    goto/16 :goto_1

    .line 2380
    :sswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2382
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2383
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2384
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->enableImsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2385
    goto/16 :goto_1

    .line 2369
    :sswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2371
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2372
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2374
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->initISIMResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2375
    goto/16 :goto_1

    .line 2359
    :sswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2362
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2363
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->sendUssdResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2364
    goto/16 :goto_1

    .line 2348
    :sswitch_50
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2351
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2353
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2354
    goto/16 :goto_1

    .line 2337
    :sswitch_51
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2339
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2340
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2342
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2343
    goto/16 :goto_1

    .line 2327
    :sswitch_52
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2330
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2331
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setBarringPasswordResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2332
    goto/16 :goto_1

    .line 2317
    :sswitch_53
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2320
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2321
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->explicitCallTransferResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2322
    goto/16 :goto_1

    .line 2307
    :sswitch_54
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2309
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2310
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2311
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setMuteResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2312
    goto/16 :goto_1

    .line 2297
    :sswitch_55
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2300
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2301
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->separateConnectionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2302
    goto/16 :goto_1

    .line 2287
    :sswitch_56
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2290
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2291
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2292
    goto/16 :goto_1

    .line 2275
    :sswitch_57
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2278
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 2280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2281
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V

    .line 2282
    goto/16 :goto_1

    .line 2264
    :sswitch_58
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2267
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2269
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getClipResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2270
    goto/16 :goto_1

    .line 2254
    :sswitch_59
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2256
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2257
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2258
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->setClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2259
    goto/16 :goto_1

    .line 2242
    :sswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2245
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2248
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;II)V

    .line 2249
    goto/16 :goto_1

    .line 2232
    :sswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2235
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2236
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->stopDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2237
    goto/16 :goto_1

    .line 2222
    :sswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2225
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2226
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->sendDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2227
    goto/16 :goto_1

    .line 2212
    :sswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2215
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2216
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->startDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2217
    goto/16 :goto_1

    .line 2200
    :sswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2203
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2204
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 2205
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2206
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getLastCallFailCauseResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 2207
    goto/16 :goto_1

    .line 2190
    :sswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2193
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2194
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->rejectCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2195
    goto/16 :goto_1

    .line 2180
    :sswitch_60
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2183
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2184
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->acceptCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2185
    goto/16 :goto_1

    .line 2170
    :sswitch_61
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2173
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2174
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->conferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2175
    goto/16 :goto_1

    .line 2160
    :sswitch_62
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2163
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2164
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2165
    goto :goto_1

    .line 2150
    :sswitch_63
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2153
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2154
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2155
    goto :goto_1

    .line 2140
    :sswitch_64
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2143
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2144
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2145
    goto :goto_1

    .line 2130
    :sswitch_65
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2133
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2134
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->hangupResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2135
    goto :goto_1

    .line 2120
    :sswitch_66
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2123
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2124
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->emergencyDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2125
    goto :goto_1

    .line 2110
    :sswitch_67
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2113
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2114
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->dialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2115
    goto :goto_1

    .line 2098
    :sswitch_68
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2101
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 2103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2104
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V

    .line 2105
    nop

    .line 3212
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_68
        0x2 -> :sswitch_67
        0x3 -> :sswitch_66
        0x4 -> :sswitch_65
        0x5 -> :sswitch_64
        0x6 -> :sswitch_63
        0x7 -> :sswitch_62
        0x8 -> :sswitch_61
        0x9 -> :sswitch_60
        0xa -> :sswitch_5f
        0xb -> :sswitch_5e
        0xc -> :sswitch_5d
        0xd -> :sswitch_5c
        0xe -> :sswitch_5b
        0xf -> :sswitch_5a
        0x10 -> :sswitch_59
        0x11 -> :sswitch_58
        0x12 -> :sswitch_57
        0x13 -> :sswitch_56
        0x14 -> :sswitch_55
        0x15 -> :sswitch_54
        0x16 -> :sswitch_53
        0x17 -> :sswitch_52
        0x18 -> :sswitch_51
        0x19 -> :sswitch_50
        0x1a -> :sswitch_4f
        0x1b -> :sswitch_4e
        0x1c -> :sswitch_4d
        0x1d -> :sswitch_4c
        0x1e -> :sswitch_4b
        0x1f -> :sswitch_4a
        0x20 -> :sswitch_49
        0x21 -> :sswitch_48
        0x22 -> :sswitch_47
        0x23 -> :sswitch_46
        0x24 -> :sswitch_45
        0x25 -> :sswitch_44
        0x26 -> :sswitch_43
        0x27 -> :sswitch_42
        0x28 -> :sswitch_41
        0x29 -> :sswitch_40
        0x2a -> :sswitch_3f
        0x2b -> :sswitch_3e
        0x2c -> :sswitch_3d
        0x2d -> :sswitch_3c
        0x2e -> :sswitch_3b
        0x2f -> :sswitch_3a
        0x30 -> :sswitch_39
        0x31 -> :sswitch_38
        0x32 -> :sswitch_37
        0x33 -> :sswitch_36
        0x34 -> :sswitch_35
        0x35 -> :sswitch_34
        0x36 -> :sswitch_33
        0x37 -> :sswitch_32
        0x38 -> :sswitch_31
        0x39 -> :sswitch_30
        0x3a -> :sswitch_2f
        0x3b -> :sswitch_2e
        0x3c -> :sswitch_2d
        0x3d -> :sswitch_2c
        0x3e -> :sswitch_2b
        0x3f -> :sswitch_2a
        0x40 -> :sswitch_29
        0x41 -> :sswitch_28
        0x42 -> :sswitch_27
        0x43 -> :sswitch_26
        0x44 -> :sswitch_25
        0x45 -> :sswitch_24
        0x46 -> :sswitch_23
        0x47 -> :sswitch_22
        0x48 -> :sswitch_21
        0x49 -> :sswitch_20
        0x4a -> :sswitch_1f
        0x4b -> :sswitch_1e
        0x4c -> :sswitch_1d
        0x4d -> :sswitch_1c
        0x4e -> :sswitch_1b
        0x4f -> :sswitch_1a
        0x50 -> :sswitch_19
        0x51 -> :sswitch_18
        0x52 -> :sswitch_17
        0x53 -> :sswitch_16
        0x54 -> :sswitch_15
        0x55 -> :sswitch_14
        0x56 -> :sswitch_13
        0x57 -> :sswitch_12
        0x58 -> :sswitch_11
        0x59 -> :sswitch_10
        0x5a -> :sswitch_f
        0x5b -> :sswitch_e
        0x5c -> :sswitch_d
        0x5d -> :sswitch_c
        0x5e -> :sswitch_b
        0x5f -> :sswitch_a
        0x60 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 2049
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 2077
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2078
    return-object p0

    .line 2080
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2084
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2085
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2039
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 2071
    const/4 p1, 0x1

    return p1
.end method
