.class public abstract Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1957
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1960
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

    .line 1973
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2010
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2011
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2012
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2013
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2014
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

    .line 1985
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1965
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1979
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1998
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2020
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2022
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2050
    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 3026
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 3029
    goto/16 :goto_1

    .line 3015
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 3018
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3019
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3021
    goto/16 :goto_1

    .line 3005
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ping()V

    .line 3008
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3010
    goto/16 :goto_1

    .line 3000
    :sswitch_3
    goto/16 :goto_1

    .line 2992
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2995
    goto/16 :goto_1

    .line 2958
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2961
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2963
    new-instance p2, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 2965
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2966
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2967
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2968
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2969
    nop

    :goto_0
    if-ge p4, v0, :cond_1

    .line 2971
    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 2972
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 2974
    if-eqz v4, :cond_0

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 2978
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2979
    nop

    .line 2969
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2975
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2982
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2984
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2987
    goto/16 :goto_1

    .line 2947
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2950
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2951
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2953
    goto/16 :goto_1

    .line 2935
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2939
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2940
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2942
    goto/16 :goto_1

    .line 2924
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 2927
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2928
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2930
    goto/16 :goto_1

    .line 2913
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2915
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2916
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2918
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsUserAgentResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2919
    goto/16 :goto_1

    .line 2902
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2904
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2905
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2907
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsStackVersionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2908
    goto/16 :goto_1

    .line 2892
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2895
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2896
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyVoWifiWhiteListResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2897
    goto/16 :goto_1

    .line 2881
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2883
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2884
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2886
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2887
    goto/16 :goto_1

    .line 2871
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2873
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2874
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2875
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendRTTMessageResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2876
    goto/16 :goto_1

    .line 2861
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2864
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2865
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setRTTChannelEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2866
    goto/16 :goto_1

    .line 2851
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2854
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2855
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->emergencyDialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2856
    goto/16 :goto_1

    .line 2841
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2843
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2844
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2845
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->dialRTTResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2846
    goto/16 :goto_1

    .line 2830
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2832
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2833
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2835
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRTTAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2836
    goto/16 :goto_1

    .line 2820
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2822
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2823
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2824
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setRTTEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2825
    goto/16 :goto_1

    .line 2810
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2812
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2813
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2814
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setPAUResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2815
    goto/16 :goto_1

    .line 2800
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2802
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2803
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2804
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->holdActiveCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2805
    goto/16 :goto_1

    .line 2789
    :sswitch_15
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2791
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2792
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2794
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2795
    goto/16 :goto_1

    .line 2778
    :sswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2781
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2783
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2784
    goto/16 :goto_1

    .line 2768
    :sswitch_17
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2770
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2771
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2772
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setSmsBearerResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2773
    goto/16 :goto_1

    .line 2758
    :sswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2760
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2761
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2762
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2763
    goto/16 :goto_1

    .line 2747
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2749
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2750
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2752
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsRegAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2753
    goto/16 :goto_1

    .line 2737
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2740
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2741
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2742
    goto/16 :goto_1

    .line 2726
    :sswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2728
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2729
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2731
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsPcscfAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/lang/String;)V

    .line 2732
    goto/16 :goto_1

    .line 2715
    :sswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2718
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2720
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getSrvccCapbilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2721
    goto/16 :goto_1

    .line 2703
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2705
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2706
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2707
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 2708
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2709
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsPaniInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 2710
    goto/16 :goto_1

    .line 2692
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2695
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2697
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2698
    goto/16 :goto_1

    .line 2682
    :sswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2684
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2685
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2686
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->callMediaChangeRequestTimeOutResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2687
    goto/16 :goto_1

    .line 2672
    :sswitch_20
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2675
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2676
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->enableWiFiParamReportResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2677
    goto/16 :goto_1

    .line 2662
    :sswitch_21
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2665
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2666
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->enableLocalHoldResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2667
    goto/16 :goto_1

    .line 2652
    :sswitch_22
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2654
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2655
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2656
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2657
    goto/16 :goto_1

    .line 2641
    :sswitch_23
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2644
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2646
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getVideoResolutionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2647
    goto/16 :goto_1

    .line 2631
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2633
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2634
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2635
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyHandoverCallInfoResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2636
    goto/16 :goto_1

    .line 2621
    :sswitch_25
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2623
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2624
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2625
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyDataRouterUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2626
    goto/16 :goto_1

    .line 2611
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2614
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2615
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyVoWifiCallStateChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2616
    goto/16 :goto_1

    .line 2601
    :sswitch_27
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2604
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2605
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyVoWifiEnableResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2606
    goto/16 :goto_1

    .line 2590
    :sswitch_28
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2593
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2595
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsBearerStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2596
    goto/16 :goto_1

    .line 2580
    :sswitch_29
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2583
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2584
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setImsSmscAddressResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2585
    goto/16 :goto_1

    .line 2570
    :sswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2573
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2574
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setImsInitialAttachApnResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2575
    goto/16 :goto_1

    .line 2560
    :sswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2562
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2563
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2564
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setCallForwardUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2565
    goto/16 :goto_1

    .line 2549
    :sswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2552
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2553
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2554
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getCallForwardStatusUriResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2555
    goto/16 :goto_1

    .line 2539
    :sswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2542
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2543
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->updateCLIPResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2544
    goto/16 :goto_1

    .line 2528
    :sswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2530
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2531
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2533
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryColrResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2534
    goto/16 :goto_1

    .line 2517
    :sswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2519
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2520
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2522
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryColpResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2523
    goto/16 :goto_1

    .line 2507
    :sswitch_30
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2510
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2511
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->responseVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2512
    goto/16 :goto_1

    .line 2497
    :sswitch_31
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2499
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2500
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2501
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->requestVolteCallMediaChangeResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2502
    goto/16 :goto_1

    .line 2486
    :sswitch_32
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2489
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2491
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2492
    goto/16 :goto_1

    .line 2476
    :sswitch_33
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2479
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2480
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setImsVoiceCallAvailabilityResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2481
    goto/16 :goto_1

    .line 2466
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2468
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2469
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2470
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsEnableLocalConferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2471
    goto/16 :goto_1

    .line 2456
    :sswitch_35
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2458
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2459
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2460
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsSilenceSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2461
    goto/16 :goto_1

    .line 2446
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2448
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2449
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2450
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsMuteSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2451
    goto/16 :goto_1

    .line 2436
    :sswitch_37
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2439
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2440
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsHoldSingleCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2441
    goto/16 :goto_1

    .line 2426
    :sswitch_38
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2429
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2430
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyImsCallEndResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2431
    goto/16 :goto_1

    .line 2416
    :sswitch_39
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2419
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2420
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyImsNetworkInfoChangedResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2421
    goto/16 :goto_1

    .line 2406
    :sswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2409
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifyImsHandoverStatusUpdateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2411
    goto/16 :goto_1

    .line 2396
    :sswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2399
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2400
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsHandoverResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2401
    goto/16 :goto_1

    .line 2386
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2388
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2389
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2390
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsAddGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2391
    goto/16 :goto_1

    .line 2376
    :sswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2378
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2379
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2380
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ImsInitialGroupCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2381
    goto/16 :goto_1

    .line 2366
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2369
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2370
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->volteCallFallBackToVoiceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2371
    goto/16 :goto_1

    .line 2355
    :sswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2358
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2359
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallVoLTE;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2360
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsCurrentCallsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2361
    goto/16 :goto_1

    .line 2345
    :sswitch_40
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2347
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2348
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2349
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->videoPhoneDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2350
    goto/16 :goto_1

    .line 2335
    :sswitch_41
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2338
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2339
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->enableImsResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2340
    goto/16 :goto_1

    .line 2324
    :sswitch_42
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2326
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2327
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2329
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->initISIMResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2330
    goto/16 :goto_1

    .line 2314
    :sswitch_43
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2317
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2318
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendUssdResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2319
    goto/16 :goto_1

    .line 2303
    :sswitch_44
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2305
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2306
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2308
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2309
    goto/16 :goto_1

    .line 2292
    :sswitch_45
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2294
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2295
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2297
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getFacilityLockForAppResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2298
    goto/16 :goto_1

    .line 2282
    :sswitch_46
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2284
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2285
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2286
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setBarringPasswordResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2287
    goto/16 :goto_1

    .line 2272
    :sswitch_47
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2275
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2276
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->explicitCallTransferResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2277
    goto/16 :goto_1

    .line 2262
    :sswitch_48
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2265
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2266
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setMuteResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2267
    goto/16 :goto_1

    .line 2252
    :sswitch_49
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2255
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2256
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->separateConnectionResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2257
    goto/16 :goto_1

    .line 2242
    :sswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2245
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2246
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2247
    goto/16 :goto_1

    .line 2230
    :sswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2233
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 2235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2236
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getCallWaitingResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V

    .line 2237
    goto/16 :goto_1

    .line 2219
    :sswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2222
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2223
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2224
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClipResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;I)V

    .line 2225
    goto/16 :goto_1

    .line 2209
    :sswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2212
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2213
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2214
    goto/16 :goto_1

    .line 2197
    :sswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2200
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2201
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2203
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClirResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;II)V

    .line 2204
    goto/16 :goto_1

    .line 2187
    :sswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2190
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2191
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->stopDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2192
    goto/16 :goto_1

    .line 2177
    :sswitch_50
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2180
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2181
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2182
    goto/16 :goto_1

    .line 2167
    :sswitch_51
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2170
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2171
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->startDtmfResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2172
    goto/16 :goto_1

    .line 2155
    :sswitch_52
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2158
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2159
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 2160
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2161
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getLastCallFailCauseResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;Lvendor/sprd/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 2162
    goto/16 :goto_1

    .line 2145
    :sswitch_53
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2148
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2149
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->rejectCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2150
    goto/16 :goto_1

    .line 2135
    :sswitch_54
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2137
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2138
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2139
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->acceptCallResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2140
    goto/16 :goto_1

    .line 2125
    :sswitch_55
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2128
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2129
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->conferenceResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2130
    goto/16 :goto_1

    .line 2115
    :sswitch_56
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2118
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2119
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2120
    goto :goto_1

    .line 2105
    :sswitch_57
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2108
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2109
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2110
    goto :goto_1

    .line 2095
    :sswitch_58
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2098
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2099
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2100
    goto :goto_1

    .line 2085
    :sswitch_59
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2088
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2089
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->hangupResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2090
    goto :goto_1

    .line 2075
    :sswitch_5a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2078
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2079
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->emergencyDialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2080
    goto :goto_1

    .line 2065
    :sswitch_5b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2068
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2069
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->dialResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;)V

    .line 2070
    goto :goto_1

    .line 2053
    :sswitch_5c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    new-instance p1, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;

    invoke-direct {p1}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;-><init>()V

    .line 2056
    invoke-virtual {p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 2058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2059
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(Lvendor/sprd/hardware/radio/ims/V1_0/ImsRadioResponseInfo;ZI)V

    .line 2060
    nop

    .line 3038
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5c
        0x2 -> :sswitch_5b
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_59
        0x5 -> :sswitch_58
        0x6 -> :sswitch_57
        0x7 -> :sswitch_56
        0x8 -> :sswitch_55
        0x9 -> :sswitch_54
        0xa -> :sswitch_53
        0xb -> :sswitch_52
        0xc -> :sswitch_51
        0xd -> :sswitch_50
        0xe -> :sswitch_4f
        0xf -> :sswitch_4e
        0x10 -> :sswitch_4d
        0x11 -> :sswitch_4c
        0x12 -> :sswitch_4b
        0x13 -> :sswitch_4a
        0x14 -> :sswitch_49
        0x15 -> :sswitch_48
        0x16 -> :sswitch_47
        0x17 -> :sswitch_46
        0x18 -> :sswitch_45
        0x19 -> :sswitch_44
        0x1a -> :sswitch_43
        0x1b -> :sswitch_42
        0x1c -> :sswitch_41
        0x1d -> :sswitch_40
        0x1e -> :sswitch_3f
        0x1f -> :sswitch_3e
        0x20 -> :sswitch_3d
        0x21 -> :sswitch_3c
        0x22 -> :sswitch_3b
        0x23 -> :sswitch_3a
        0x24 -> :sswitch_39
        0x25 -> :sswitch_38
        0x26 -> :sswitch_37
        0x27 -> :sswitch_36
        0x28 -> :sswitch_35
        0x29 -> :sswitch_34
        0x2a -> :sswitch_33
        0x2b -> :sswitch_32
        0x2c -> :sswitch_31
        0x2d -> :sswitch_30
        0x2e -> :sswitch_2f
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_2c
        0x32 -> :sswitch_2b
        0x33 -> :sswitch_2a
        0x34 -> :sswitch_29
        0x35 -> :sswitch_28
        0x36 -> :sswitch_27
        0x37 -> :sswitch_26
        0x38 -> :sswitch_25
        0x39 -> :sswitch_24
        0x3a -> :sswitch_23
        0x3b -> :sswitch_22
        0x3c -> :sswitch_21
        0x3d -> :sswitch_20
        0x3e -> :sswitch_1f
        0x3f -> :sswitch_1e
        0x40 -> :sswitch_1d
        0x41 -> :sswitch_1c
        0x42 -> :sswitch_1b
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_19
        0x45 -> :sswitch_18
        0x46 -> :sswitch_17
        0x47 -> :sswitch_16
        0x48 -> :sswitch_15
        0x49 -> :sswitch_14
        0x4a -> :sswitch_13
        0x4b -> :sswitch_12
        0x4c -> :sswitch_11
        0x4d -> :sswitch_10
        0x4e -> :sswitch_f
        0x4f -> :sswitch_e
        0x50 -> :sswitch_d
        0x51 -> :sswitch_c
        0x52 -> :sswitch_b
        0x53 -> :sswitch_a
        0x54 -> :sswitch_9
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

    .line 2004
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 2032
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2033
    return-object p0

    .line 2035
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

    .line 2039
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2040
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1994
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2026
    const/4 p1, 0x1

    return p1
.end method
