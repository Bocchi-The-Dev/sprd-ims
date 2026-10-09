.class public abstract Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2052
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2055
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

    .line 2068
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2105
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2106
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2107
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2108
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2109
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

    .line 2080
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
        0x64t
        0xat
        -0x40t
        0x1et
        -0x26t
        -0x35t
        0x27t
        -0x18t
        -0x7dt
        -0x40t
        0x56t
        -0x69t
        0x38t
        -0x7bt
        0x1dt
        0x7ct
        -0x27t
        -0x6ft
        0x55t
        -0x6bt
        0x16t
        0x5t
        0x3ct
        0x49t
        0x1bt
        -0x17t
        -0x54t
        0x40t
        -0x1bt
        -0x79t
        -0x19t
        -0x1bt
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

    .line 2060
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

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

    .line 2074
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 2093
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2115
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2117
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2145
    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 3115
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 3118
    goto/16 :goto_1

    .line 3104
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3107
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3108
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3110
    goto/16 :goto_1

    .line 3094
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ping()V

    .line 3097
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3098
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3099
    goto/16 :goto_1

    .line 3089
    :sswitch_3
    goto/16 :goto_1

    .line 3081
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setHALInstrumentation()V

    .line 3084
    goto/16 :goto_1

    .line 3047
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3050
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3052
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3054
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3055
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3056
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3057
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3058
    nop

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3060
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 3061
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 3063
    if-eqz v8, :cond_0

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 3067
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3068
    nop

    .line 3058
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3064
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3071
    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3073
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3075
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3076
    goto/16 :goto_1

    .line 3036
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3039
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3040
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3042
    goto/16 :goto_1

    .line 3024
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 3027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3028
    invoke-virtual {p0, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3029
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3031
    goto/16 :goto_1

    .line 3013
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3016
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3017
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3018
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3019
    goto/16 :goto_1

    .line 3004
    :sswitch_9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3007
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsUserAgent(I)V

    .line 3008
    goto/16 :goto_1

    .line 2995
    :sswitch_a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2998
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsStackVersion(I)V

    .line 2999
    goto/16 :goto_1

    .line 2985
    :sswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2989
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyVoWifiWhiteList(II)V

    .line 2990
    goto/16 :goto_1

    .line 2976
    :sswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2979
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getPAU(I)V

    .line 2980
    goto/16 :goto_1

    .line 2966
    :sswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2970
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendRTTMessage(ILjava/lang/String;)V

    .line 2971
    goto/16 :goto_1

    .line 2956
    :sswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2960
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setRTTChannelEnable(II)V

    .line 2961
    goto/16 :goto_1

    .line 2940
    :sswitch_f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2943
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2944
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v5

    .line 2947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 2949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 2950
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->emergencyDialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 2951
    goto/16 :goto_1

    .line 2929
    :sswitch_10
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2932
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2933
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2934
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->dialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 2935
    goto/16 :goto_1

    .line 2920
    :sswitch_11
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2923
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getRTTAllowedPLMN(I)V

    .line 2924
    goto/16 :goto_1

    .line 2910
    :sswitch_12
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2914
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setRTTEnable(II)V

    .line 2915
    goto/16 :goto_1

    .line 2900
    :sswitch_13
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2904
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setPAU(ILjava/lang/String;)V

    .line 2905
    goto/16 :goto_1

    .line 2891
    :sswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2894
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->holdActiveCall(I)V

    .line 2895
    goto/16 :goto_1

    .line 2882
    :sswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2885
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getVoLTEAllowedPLMN(I)V

    .line 2886
    goto/16 :goto_1

    .line 2873
    :sswitch_16
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2876
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getSmsBearer(I)V

    .line 2877
    goto/16 :goto_1

    .line 2863
    :sswitch_17
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2867
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setSmsBearer(II)V

    .line 2868
    goto/16 :goto_1

    .line 2852
    :sswitch_18
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2857
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsRegAddress(IILjava/lang/String;)V

    .line 2858
    goto/16 :goto_1

    .line 2843
    :sswitch_19
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2846
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsRegAddress(I)V

    .line 2847
    goto/16 :goto_1

    .line 2833
    :sswitch_1a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2837
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsPcscfAddress(ILjava/lang/String;)V

    .line 2838
    goto/16 :goto_1

    .line 2824
    :sswitch_1b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2827
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsPcscfAddress(I)V

    .line 2828
    goto/16 :goto_1

    .line 2815
    :sswitch_1c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2818
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getSrvccCapbility(I)V

    .line 2819
    goto/16 :goto_1

    .line 2806
    :sswitch_1d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2809
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsPaniInfo(I)V

    .line 2810
    goto/16 :goto_1

    .line 2796
    :sswitch_1e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2800
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getSpecialRatcap(II)V

    .line 2801
    goto/16 :goto_1

    .line 2786
    :sswitch_1f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2790
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->callMediaChangeRequestTimeOut(II)V

    .line 2791
    goto/16 :goto_1

    .line 2776
    :sswitch_20
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2780
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->enableWiFiParamReport(IZ)V

    .line 2781
    goto/16 :goto_1

    .line 2766
    :sswitch_21
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2770
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->enableLocalHold(IZ)V

    .line 2771
    goto/16 :goto_1

    .line 2756
    :sswitch_22
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2760
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setVideoResolution(II)V

    .line 2761
    goto/16 :goto_1

    .line 2747
    :sswitch_23
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2750
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getVideoResolution(I)V

    .line 2751
    goto/16 :goto_1

    .line 2737
    :sswitch_24
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2741
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyHandoverCallInfo(ILjava/lang/String;)V

    .line 2742
    goto/16 :goto_1

    .line 2728
    :sswitch_25
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2731
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyDataRouterUpdate(I)V

    .line 2732
    goto/16 :goto_1

    .line 2718
    :sswitch_26
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2722
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyVoWifiCallStateChanged(IZ)V

    .line 2723
    goto/16 :goto_1

    .line 2708
    :sswitch_27
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2712
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyVoWifiEnable(IZ)V

    .line 2713
    goto/16 :goto_1

    .line 2699
    :sswitch_28
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2702
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsBearerState(I)V

    .line 2703
    goto/16 :goto_1

    .line 2689
    :sswitch_29
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2691
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2693
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsSmscAddress(ILjava/lang/String;)V

    .line 2694
    goto/16 :goto_1

    .line 2678
    :sswitch_2a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2681
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;-><init>()V

    .line 2682
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2683
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsInitialAttachApn(ILvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;)V

    .line 2684
    goto/16 :goto_1

    .line 2667
    :sswitch_2b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2670
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 2671
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2672
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallForwardUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 2673
    goto/16 :goto_1

    .line 2656
    :sswitch_2c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2659
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 2660
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2661
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getCallForwardStatusUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 2662
    goto/16 :goto_1

    .line 2646
    :sswitch_2d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2650
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->updateCLIP(II)V

    .line 2651
    goto/16 :goto_1

    .line 2637
    :sswitch_2e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2640
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryColr(I)V

    .line 2641
    goto/16 :goto_1

    .line 2628
    :sswitch_2f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2631
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryColp(I)V

    .line 2632
    goto/16 :goto_1

    .line 2616
    :sswitch_30
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2620
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2622
    invoke-virtual {p0, v2, v3, v4, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->responseVolteCallMediaChange(IIZI)V

    .line 2623
    goto/16 :goto_1

    .line 2605
    :sswitch_31
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2610
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->requestVolteCallMediaChange(III)V

    .line 2611
    goto/16 :goto_1

    .line 2596
    :sswitch_32
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2599
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsVoiceCallAvailability(I)V

    .line 2600
    goto/16 :goto_1

    .line 2586
    :sswitch_33
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2590
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsVoiceCallAvailability(II)V

    .line 2591
    goto/16 :goto_1

    .line 2576
    :sswitch_34
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2580
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsEnableLocalConference(IZ)V

    .line 2581
    goto/16 :goto_1

    .line 2565
    :sswitch_35
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2570
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsSilenceSingleCall(IIZ)V

    .line 2571
    goto/16 :goto_1

    .line 2554
    :sswitch_36
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2559
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsMuteSingleCall(IIZ)V

    .line 2560
    goto/16 :goto_1

    .line 2543
    :sswitch_37
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2548
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsHoldSingleCall(IIZ)V

    .line 2549
    goto/16 :goto_1

    .line 2533
    :sswitch_38
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2537
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyImsCallEnd(II)V

    .line 2538
    goto/16 :goto_1

    .line 2522
    :sswitch_39
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2525
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 2526
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2527
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 2528
    goto/16 :goto_1

    .line 2512
    :sswitch_3a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2516
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifyImsHandoverStatusUpdate(II)V

    .line 2517
    goto/16 :goto_1

    .line 2502
    :sswitch_3b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2506
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsHandover(II)V

    .line 2507
    goto/16 :goto_1

    .line 2492
    :sswitch_3c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2496
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsAddGroupCall(ILjava/lang/String;)V

    .line 2497
    goto/16 :goto_1

    .line 2482
    :sswitch_3d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2486
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->ImsInitialGroupCall(ILjava/lang/String;)V

    .line 2487
    goto/16 :goto_1

    .line 2472
    :sswitch_3e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2476
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->volteCallFallBackToVoice(II)V

    .line 2477
    goto/16 :goto_1

    .line 2463
    :sswitch_3f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2466
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsCurrentCalls(I)V

    .line 2467
    goto/16 :goto_1

    .line 2452
    :sswitch_40
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2455
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;-><init>()V

    .line 2456
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2457
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->videoPhoneDial(ILvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;)V

    .line 2458
    goto/16 :goto_1

    .line 2442
    :sswitch_41
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2446
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->enableIms(IZ)V

    .line 2447
    goto/16 :goto_1

    .line 2433
    :sswitch_42
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2436
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->initISIM(I)V

    .line 2437
    goto/16 :goto_1

    .line 2423
    :sswitch_43
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2427
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 2428
    goto/16 :goto_1

    .line 2409
    :sswitch_44
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2417
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 2418
    goto/16 :goto_1

    .line 2396
    :sswitch_45
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2403
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2404
    goto/16 :goto_1

    .line 2384
    :sswitch_46
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2390
    invoke-virtual {p0, v2, v3, v4, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    goto/16 :goto_1

    .line 2375
    :sswitch_47
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2378
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->explicitCallTransfer(I)V

    .line 2379
    goto/16 :goto_1

    .line 2365
    :sswitch_48
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2368
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2369
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setMute(IZ)V

    .line 2370
    goto/16 :goto_1

    .line 2355
    :sswitch_49
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2359
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->separateConnection(II)V

    .line 2360
    goto/16 :goto_1

    .line 2344
    :sswitch_4a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2347
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 2348
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2349
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallWaiting(IZI)V

    .line 2350
    goto/16 :goto_1

    .line 2334
    :sswitch_4b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2338
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getCallWaiting(II)V

    .line 2339
    goto/16 :goto_1

    .line 2325
    :sswitch_4c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2328
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClip(I)V

    .line 2329
    goto/16 :goto_1

    .line 2315
    :sswitch_4d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2318
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2319
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setClir(II)V

    .line 2320
    goto/16 :goto_1

    .line 2306
    :sswitch_4e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2309
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClir(I)V

    .line 2310
    goto/16 :goto_1

    .line 2297
    :sswitch_4f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2300
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->stopDtmf(I)V

    .line 2301
    goto/16 :goto_1

    .line 2287
    :sswitch_50
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2291
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 2292
    goto/16 :goto_1

    .line 2277
    :sswitch_51
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2281
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 2282
    goto/16 :goto_1

    .line 2268
    :sswitch_52
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2271
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getLastCallFailCause(I)V

    .line 2272
    goto/16 :goto_1

    .line 2259
    :sswitch_53
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2262
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->rejectCall(I)V

    .line 2263
    goto/16 :goto_1

    .line 2250
    :sswitch_54
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2253
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->acceptCall(I)V

    .line 2254
    goto/16 :goto_1

    .line 2241
    :sswitch_55
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2244
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->conference(I)V

    .line 2245
    goto/16 :goto_1

    .line 2232
    :sswitch_56
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2235
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 2236
    goto/16 :goto_1

    .line 2223
    :sswitch_57
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2226
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 2227
    goto/16 :goto_1

    .line 2214
    :sswitch_58
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2217
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 2218
    goto/16 :goto_1

    .line 2204
    :sswitch_59
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2208
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->hangup(II)V

    .line 2209
    goto/16 :goto_1

    .line 2188
    :sswitch_5a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2191
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2192
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v5

    .line 2195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 2197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 2198
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->emergencyDial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 2199
    goto :goto_1

    .line 2177
    :sswitch_5b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2180
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2181
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2182
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->dial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 2183
    goto :goto_1

    .line 2168
    :sswitch_5c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2171
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 2172
    goto :goto_1

    .line 2160
    :sswitch_5d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->responseAcknowledgement()V

    .line 2163
    goto :goto_1

    .line 2148
    :sswitch_5e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v3

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 2152
    invoke-virtual {p0, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->setImsResponseFunctions(Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 2153
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2154
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2155
    nop

    .line 3127
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5e
        0x2 -> :sswitch_5d
        0x3 -> :sswitch_5c
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_5a
        0x6 -> :sswitch_59
        0x7 -> :sswitch_58
        0x8 -> :sswitch_57
        0x9 -> :sswitch_56
        0xa -> :sswitch_55
        0xb -> :sswitch_54
        0xc -> :sswitch_53
        0xd -> :sswitch_52
        0xe -> :sswitch_51
        0xf -> :sswitch_50
        0x10 -> :sswitch_4f
        0x11 -> :sswitch_4e
        0x12 -> :sswitch_4d
        0x13 -> :sswitch_4c
        0x14 -> :sswitch_4b
        0x15 -> :sswitch_4a
        0x16 -> :sswitch_49
        0x17 -> :sswitch_48
        0x18 -> :sswitch_47
        0x19 -> :sswitch_46
        0x1a -> :sswitch_45
        0x1b -> :sswitch_44
        0x1c -> :sswitch_43
        0x1d -> :sswitch_42
        0x1e -> :sswitch_41
        0x1f -> :sswitch_40
        0x20 -> :sswitch_3f
        0x21 -> :sswitch_3e
        0x22 -> :sswitch_3d
        0x23 -> :sswitch_3c
        0x24 -> :sswitch_3b
        0x25 -> :sswitch_3a
        0x26 -> :sswitch_39
        0x27 -> :sswitch_38
        0x28 -> :sswitch_37
        0x29 -> :sswitch_36
        0x2a -> :sswitch_35
        0x2b -> :sswitch_34
        0x2c -> :sswitch_33
        0x2d -> :sswitch_32
        0x2e -> :sswitch_31
        0x2f -> :sswitch_30
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_2e
        0x32 -> :sswitch_2d
        0x33 -> :sswitch_2c
        0x34 -> :sswitch_2b
        0x35 -> :sswitch_2a
        0x36 -> :sswitch_29
        0x37 -> :sswitch_28
        0x38 -> :sswitch_27
        0x39 -> :sswitch_26
        0x3a -> :sswitch_25
        0x3b -> :sswitch_24
        0x3c -> :sswitch_23
        0x3d -> :sswitch_22
        0x3e -> :sswitch_21
        0x3f -> :sswitch_20
        0x40 -> :sswitch_1f
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_1c
        0x44 -> :sswitch_1b
        0x45 -> :sswitch_1a
        0x46 -> :sswitch_19
        0x47 -> :sswitch_18
        0x48 -> :sswitch_17
        0x49 -> :sswitch_16
        0x4a -> :sswitch_15
        0x4b -> :sswitch_14
        0x4c -> :sswitch_13
        0x4d -> :sswitch_12
        0x4e -> :sswitch_11
        0x4f -> :sswitch_10
        0x50 -> :sswitch_f
        0x51 -> :sswitch_e
        0x52 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x55 -> :sswitch_a
        0x56 -> :sswitch_9
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

    .line 2099
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 2127
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2128
    return-object p0

    .line 2130
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

    .line 2134
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2135
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2089
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2121
    const/4 p1, 0x1

    return p1
.end method
