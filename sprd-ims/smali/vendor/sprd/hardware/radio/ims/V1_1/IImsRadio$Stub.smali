.class public abstract Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2096
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2099
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

    .line 2113
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2151
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2152
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2153
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2154
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2155
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

    .line 2125
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
        0x3ct
        -0x4et
        -0x53t
        0x73t
        0x38t
        -0x79t
        -0x3t
        0x7ft
        -0x7ft
        0x0t
        -0x3bt
        -0x2ft
        0xct
        0x58t
        -0x1ct
        -0x51t
        0x6dt
        0x16t
        -0x55t
        -0x76t
        0x14t
        -0x73t
        0x39t
        -0x31t
        0xat
        0x1et
        -0x25t
        0x69t
        0x63t
        -0x1dt
        0x5et
        -0x22t
    .end array-data

    :array_1
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

    .line 2104
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadio"

    const-string v2, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

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

    .line 2119
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 2139
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2161
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2163
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2191
    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "vendor.sprd.hardware.radio.ims@1.1::IImsRadio"

    const-string v6, "vendor.sprd.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 3287
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3289
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 3290
    goto/16 :goto_1

    .line 3276
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3279
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3280
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3282
    goto/16 :goto_1

    .line 3266
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ping()V

    .line 3269
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3271
    goto/16 :goto_1

    .line 3261
    :sswitch_3
    goto/16 :goto_1

    .line 3253
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setHALInstrumentation()V

    .line 3256
    goto/16 :goto_1

    .line 3219
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3221
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3222
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3224
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3227
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3228
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3229
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3230
    nop

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3232
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 3233
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 3235
    if-eqz v8, :cond_0

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 3239
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3240
    nop

    .line 3230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3243
    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3245
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3248
    goto/16 :goto_1

    .line 3208
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3211
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3212
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3214
    goto/16 :goto_1

    .line 3196
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 3199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3200
    invoke-virtual {p0, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3201
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3203
    goto/16 :goto_1

    .line 3185
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3188
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3189
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3191
    goto/16 :goto_1

    .line 3175
    :sswitch_9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3179
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setLocalTone(II)V

    .line 3180
    goto/16 :goto_1

    .line 3165
    :sswitch_a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3169
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->closeDialog(ILjava/lang/String;)V

    .line 3170
    goto/16 :goto_1

    .line 3154
    :sswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3159
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->triggerFullNetworkRegistration(IILjava/lang/String;)V

    .line 3160
    goto/16 :goto_1

    .line 3145
    :sswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3148
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->triggerSipDelegateDeregistration(I)V

    .line 3149
    goto/16 :goto_1

    .line 3135
    :sswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3139
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->updateSipDelegateRegistration(ILjava/util/ArrayList;)V

    .line 3140
    goto/16 :goto_1

    .line 3124
    :sswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3127
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;-><init>()V

    .line 3128
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3129
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->sendSipMessage(ILvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)V

    .line 3130
    goto/16 :goto_1

    .line 3113
    :sswitch_f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3118
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->sendOptionsCapabilityRequest(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 3119
    goto/16 :goto_1

    .line 3103
    :sswitch_10
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3107
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->subscribeForCapabilities(ILjava/util/ArrayList;)V

    .line 3108
    goto/16 :goto_1

    .line 3093
    :sswitch_11
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3097
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->publishCapabilities(ILjava/lang/String;)V

    .line 3098
    goto/16 :goto_1

    .line 3083
    :sswitch_12
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3086
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_1/UceCapabilitiesInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3087
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setUceCapabilities(ILjava/util/ArrayList;)V

    .line 3088
    goto/16 :goto_1

    .line 3069
    :sswitch_13
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3071
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 3076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 3077
    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->bootstrapAuthentication(IIILjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 3078
    goto/16 :goto_1

    .line 3059
    :sswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3063
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setCarrierImsUserAgent(ILjava/lang/String;)V

    .line 3064
    goto/16 :goto_1

    .line 3050
    :sswitch_15
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3053
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsUserAgent(I)V

    .line 3054
    goto/16 :goto_1

    .line 3041
    :sswitch_16
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3044
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsStackVersion(I)V

    .line 3045
    goto/16 :goto_1

    .line 3031
    :sswitch_17
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3035
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyVoWifiWhiteList(II)V

    .line 3036
    goto/16 :goto_1

    .line 3022
    :sswitch_18
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3025
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getPAU(I)V

    .line 3026
    goto/16 :goto_1

    .line 3012
    :sswitch_19
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3016
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->sendRTTMessage(ILjava/lang/String;)V

    .line 3017
    goto/16 :goto_1

    .line 3002
    :sswitch_1a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3006
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setRTTChannelEnable(II)V

    .line 3007
    goto/16 :goto_1

    .line 2986
    :sswitch_1b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2989
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2990
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2992
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v5

    .line 2993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 2995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 2996
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->emergencyDialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 2997
    goto/16 :goto_1

    .line 2975
    :sswitch_1c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2978
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2979
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2980
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->dialRTT(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 2981
    goto/16 :goto_1

    .line 2966
    :sswitch_1d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2969
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getRTTAllowedPLMN(I)V

    .line 2970
    goto/16 :goto_1

    .line 2956
    :sswitch_1e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2960
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setRTTEnable(II)V

    .line 2961
    goto/16 :goto_1

    .line 2946
    :sswitch_1f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2950
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setPAU(ILjava/lang/String;)V

    .line 2951
    goto/16 :goto_1

    .line 2937
    :sswitch_20
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2940
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->holdActiveCall(I)V

    .line 2941
    goto/16 :goto_1

    .line 2928
    :sswitch_21
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2931
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getVoLTEAllowedPLMN(I)V

    .line 2932
    goto/16 :goto_1

    .line 2919
    :sswitch_22
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2922
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getSmsBearer(I)V

    .line 2923
    goto/16 :goto_1

    .line 2909
    :sswitch_23
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2913
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setSmsBearer(II)V

    .line 2914
    goto/16 :goto_1

    .line 2898
    :sswitch_24
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2903
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsRegAddress(IILjava/lang/String;)V

    .line 2904
    goto/16 :goto_1

    .line 2889
    :sswitch_25
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2892
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsRegAddress(I)V

    .line 2893
    goto/16 :goto_1

    .line 2879
    :sswitch_26
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2883
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsPcscfAddress(ILjava/lang/String;)V

    .line 2884
    goto/16 :goto_1

    .line 2870
    :sswitch_27
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2873
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsPcscfAddress(I)V

    .line 2874
    goto/16 :goto_1

    .line 2861
    :sswitch_28
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2864
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getSrvccCapbility(I)V

    .line 2865
    goto/16 :goto_1

    .line 2852
    :sswitch_29
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2855
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsPaniInfo(I)V

    .line 2856
    goto/16 :goto_1

    .line 2842
    :sswitch_2a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2846
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getSpecialRatcap(II)V

    .line 2847
    goto/16 :goto_1

    .line 2832
    :sswitch_2b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2836
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->callMediaChangeRequestTimeOut(II)V

    .line 2837
    goto/16 :goto_1

    .line 2822
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2826
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->enableWiFiParamReport(IZ)V

    .line 2827
    goto/16 :goto_1

    .line 2812
    :sswitch_2d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2816
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->enableLocalHold(IZ)V

    .line 2817
    goto/16 :goto_1

    .line 2802
    :sswitch_2e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2806
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setVideoResolution(II)V

    .line 2807
    goto/16 :goto_1

    .line 2793
    :sswitch_2f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2796
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getVideoResolution(I)V

    .line 2797
    goto/16 :goto_1

    .line 2783
    :sswitch_30
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2787
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyHandoverCallInfo(ILjava/lang/String;)V

    .line 2788
    goto/16 :goto_1

    .line 2774
    :sswitch_31
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2777
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyDataRouterUpdate(I)V

    .line 2778
    goto/16 :goto_1

    .line 2764
    :sswitch_32
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2768
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyVoWifiCallStateChanged(IZ)V

    .line 2769
    goto/16 :goto_1

    .line 2754
    :sswitch_33
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2758
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyVoWifiEnable(IZ)V

    .line 2759
    goto/16 :goto_1

    .line 2745
    :sswitch_34
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2748
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsBearerState(I)V

    .line 2749
    goto/16 :goto_1

    .line 2735
    :sswitch_35
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2739
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsSmscAddress(ILjava/lang/String;)V

    .line 2740
    goto/16 :goto_1

    .line 2724
    :sswitch_36
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2727
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;-><init>()V

    .line 2728
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2729
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsInitialAttachApn(ILvendor/sprd/hardware/radio/ims/V1_0/DataProfileInfo;)V

    .line 2730
    goto/16 :goto_1

    .line 2713
    :sswitch_37
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2716
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 2717
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2718
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setCallForwardUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 2719
    goto/16 :goto_1

    .line 2702
    :sswitch_38
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2705
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;-><init>()V

    .line 2706
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2707
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getCallForwardStatusUri(ILvendor/sprd/hardware/radio/ims/V1_0/CallForwardInfoUri;)V

    .line 2708
    goto/16 :goto_1

    .line 2692
    :sswitch_39
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2696
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->updateCLIP(II)V

    .line 2697
    goto/16 :goto_1

    .line 2683
    :sswitch_3a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2686
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->queryColr(I)V

    .line 2687
    goto/16 :goto_1

    .line 2674
    :sswitch_3b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2677
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->queryColp(I)V

    .line 2678
    goto/16 :goto_1

    .line 2662
    :sswitch_3c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2668
    invoke-virtual {p0, v2, v3, v4, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->responseVolteCallMediaChange(IIZI)V

    .line 2669
    goto/16 :goto_1

    .line 2651
    :sswitch_3d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2656
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->requestVolteCallMediaChange(III)V

    .line 2657
    goto/16 :goto_1

    .line 2642
    :sswitch_3e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2645
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsVoiceCallAvailability(I)V

    .line 2646
    goto/16 :goto_1

    .line 2632
    :sswitch_3f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2636
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsVoiceCallAvailability(II)V

    .line 2637
    goto/16 :goto_1

    .line 2622
    :sswitch_40
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2626
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsEnableLocalConference(IZ)V

    .line 2627
    goto/16 :goto_1

    .line 2611
    :sswitch_41
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2616
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsSilenceSingleCall(IIZ)V

    .line 2617
    goto/16 :goto_1

    .line 2600
    :sswitch_42
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2604
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2605
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsMuteSingleCall(IIZ)V

    .line 2606
    goto/16 :goto_1

    .line 2589
    :sswitch_43
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2594
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsHoldSingleCall(IIZ)V

    .line 2595
    goto/16 :goto_1

    .line 2579
    :sswitch_44
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2583
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyImsCallEnd(II)V

    .line 2584
    goto/16 :goto_1

    .line 2568
    :sswitch_45
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2571
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 2572
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2573
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 2574
    goto/16 :goto_1

    .line 2558
    :sswitch_46
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2562
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->notifyImsHandoverStatusUpdate(II)V

    .line 2563
    goto/16 :goto_1

    .line 2548
    :sswitch_47
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2552
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsHandover(II)V

    .line 2553
    goto/16 :goto_1

    .line 2538
    :sswitch_48
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2542
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsAddGroupCall(ILjava/lang/String;)V

    .line 2543
    goto/16 :goto_1

    .line 2528
    :sswitch_49
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2532
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->ImsInitialGroupCall(ILjava/lang/String;)V

    .line 2533
    goto/16 :goto_1

    .line 2518
    :sswitch_4a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2522
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->volteCallFallBackToVoice(II)V

    .line 2523
    goto/16 :goto_1

    .line 2509
    :sswitch_4b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2512
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsCurrentCalls(I)V

    .line 2513
    goto/16 :goto_1

    .line 2498
    :sswitch_4c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2501
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;-><init>()V

    .line 2502
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2503
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->videoPhoneDial(ILvendor/sprd/hardware/radio/ims/V1_0/VideoPhoneDial;)V

    .line 2504
    goto/16 :goto_1

    .line 2488
    :sswitch_4d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2491
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2492
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->enableIms(IZ)V

    .line 2493
    goto/16 :goto_1

    .line 2479
    :sswitch_4e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2482
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->initISIM(I)V

    .line 2483
    goto/16 :goto_1

    .line 2469
    :sswitch_4f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2473
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 2474
    goto/16 :goto_1

    .line 2455
    :sswitch_50
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2463
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 2464
    goto/16 :goto_1

    .line 2442
    :sswitch_51
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 2448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2449
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2450
    goto/16 :goto_1

    .line 2430
    :sswitch_52
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2436
    invoke-virtual {p0, v2, v3, v4, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    goto/16 :goto_1

    .line 2421
    :sswitch_53
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2424
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->explicitCallTransfer(I)V

    .line 2425
    goto/16 :goto_1

    .line 2411
    :sswitch_54
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2415
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setMute(IZ)V

    .line 2416
    goto/16 :goto_1

    .line 2401
    :sswitch_55
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2405
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->separateConnection(II)V

    .line 2406
    goto/16 :goto_1

    .line 2390
    :sswitch_56
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 2394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2395
    invoke-virtual {p0, v2, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setCallWaiting(IZI)V

    .line 2396
    goto/16 :goto_1

    .line 2380
    :sswitch_57
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2384
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getCallWaiting(II)V

    .line 2385
    goto/16 :goto_1

    .line 2371
    :sswitch_58
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2374
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getClip(I)V

    .line 2375
    goto/16 :goto_1

    .line 2361
    :sswitch_59
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2365
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setClir(II)V

    .line 2366
    goto/16 :goto_1

    .line 2352
    :sswitch_5a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2355
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getClir(I)V

    .line 2356
    goto/16 :goto_1

    .line 2343
    :sswitch_5b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2346
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->stopDtmf(I)V

    .line 2347
    goto/16 :goto_1

    .line 2333
    :sswitch_5c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2337
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 2338
    goto/16 :goto_1

    .line 2323
    :sswitch_5d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2327
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 2328
    goto/16 :goto_1

    .line 2314
    :sswitch_5e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2317
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getLastCallFailCause(I)V

    .line 2318
    goto/16 :goto_1

    .line 2305
    :sswitch_5f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2308
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->rejectCall(I)V

    .line 2309
    goto/16 :goto_1

    .line 2296
    :sswitch_60
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2299
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->acceptCall(I)V

    .line 2300
    goto/16 :goto_1

    .line 2287
    :sswitch_61
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2290
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->conference(I)V

    .line 2291
    goto/16 :goto_1

    .line 2278
    :sswitch_62
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2281
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 2282
    goto/16 :goto_1

    .line 2269
    :sswitch_63
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2272
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 2273
    goto/16 :goto_1

    .line 2260
    :sswitch_64
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2263
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 2264
    goto/16 :goto_1

    .line 2250
    :sswitch_65
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2253
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2254
    invoke-virtual {p0, v2, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->hangup(II)V

    .line 2255
    goto/16 :goto_1

    .line 2234
    :sswitch_66
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2237
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2238
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v5

    .line 2241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 2243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 2244
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->emergencyDial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 2245
    goto :goto_1

    .line 2223
    :sswitch_67
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2226
    new-instance v3, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;

    invoke-direct {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;-><init>()V

    .line 2227
    invoke-virtual {v3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2228
    invoke-virtual {p0, v2, v3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->dial(ILvendor/sprd/hardware/radio/ims/V1_0/Dial;)V

    .line 2229
    goto :goto_1

    .line 2214
    :sswitch_68
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2217
    invoke-virtual {p0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 2218
    goto :goto_1

    .line 2206
    :sswitch_69
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->responseAcknowledgement()V

    .line 2209
    goto :goto_1

    .line 2194
    :sswitch_6a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v3

    .line 2197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 2198
    invoke-virtual {p0, v3, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->setImsResponseFunctions(Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 2199
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2201
    nop

    .line 3299
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6a
        0x2 -> :sswitch_69
        0x3 -> :sswitch_68
        0x4 -> :sswitch_67
        0x5 -> :sswitch_66
        0x6 -> :sswitch_65
        0x7 -> :sswitch_64
        0x8 -> :sswitch_63
        0x9 -> :sswitch_62
        0xa -> :sswitch_61
        0xb -> :sswitch_60
        0xc -> :sswitch_5f
        0xd -> :sswitch_5e
        0xe -> :sswitch_5d
        0xf -> :sswitch_5c
        0x10 -> :sswitch_5b
        0x11 -> :sswitch_5a
        0x12 -> :sswitch_59
        0x13 -> :sswitch_58
        0x14 -> :sswitch_57
        0x15 -> :sswitch_56
        0x16 -> :sswitch_55
        0x17 -> :sswitch_54
        0x18 -> :sswitch_53
        0x19 -> :sswitch_52
        0x1a -> :sswitch_51
        0x1b -> :sswitch_50
        0x1c -> :sswitch_4f
        0x1d -> :sswitch_4e
        0x1e -> :sswitch_4d
        0x1f -> :sswitch_4c
        0x20 -> :sswitch_4b
        0x21 -> :sswitch_4a
        0x22 -> :sswitch_49
        0x23 -> :sswitch_48
        0x24 -> :sswitch_47
        0x25 -> :sswitch_46
        0x26 -> :sswitch_45
        0x27 -> :sswitch_44
        0x28 -> :sswitch_43
        0x29 -> :sswitch_42
        0x2a -> :sswitch_41
        0x2b -> :sswitch_40
        0x2c -> :sswitch_3f
        0x2d -> :sswitch_3e
        0x2e -> :sswitch_3d
        0x2f -> :sswitch_3c
        0x30 -> :sswitch_3b
        0x31 -> :sswitch_3a
        0x32 -> :sswitch_39
        0x33 -> :sswitch_38
        0x34 -> :sswitch_37
        0x35 -> :sswitch_36
        0x36 -> :sswitch_35
        0x37 -> :sswitch_34
        0x38 -> :sswitch_33
        0x39 -> :sswitch_32
        0x3a -> :sswitch_31
        0x3b -> :sswitch_30
        0x3c -> :sswitch_2f
        0x3d -> :sswitch_2e
        0x3e -> :sswitch_2d
        0x3f -> :sswitch_2c
        0x40 -> :sswitch_2b
        0x41 -> :sswitch_2a
        0x42 -> :sswitch_29
        0x43 -> :sswitch_28
        0x44 -> :sswitch_27
        0x45 -> :sswitch_26
        0x46 -> :sswitch_25
        0x47 -> :sswitch_24
        0x48 -> :sswitch_23
        0x49 -> :sswitch_22
        0x4a -> :sswitch_21
        0x4b -> :sswitch_20
        0x4c -> :sswitch_1f
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_1d
        0x4f -> :sswitch_1c
        0x50 -> :sswitch_1b
        0x51 -> :sswitch_1a
        0x52 -> :sswitch_19
        0x53 -> :sswitch_18
        0x54 -> :sswitch_17
        0x55 -> :sswitch_16
        0x56 -> :sswitch_15
        0x57 -> :sswitch_14
        0x58 -> :sswitch_13
        0x59 -> :sswitch_12
        0x5a -> :sswitch_11
        0x5b -> :sswitch_10
        0x5c -> :sswitch_f
        0x5d -> :sswitch_e
        0x5e -> :sswitch_d
        0x5f -> :sswitch_c
        0x60 -> :sswitch_b
        0x61 -> :sswitch_a
        0x62 -> :sswitch_9
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

    .line 2145
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 2173
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2174
    return-object p0

    .line 2176
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

    .line 2180
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2167
    const/4 p1, 0x1

    return p1
.end method
