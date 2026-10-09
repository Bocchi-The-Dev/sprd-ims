.class public abstract Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 907
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 910
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

    .line 923
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 960
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 961
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 962
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 963
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 964
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

    .line 935
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
        -0x3et
        0x21t
        0x6ct
        0x25t
        0x51t
        0x69t
        0x2at
        0x66t
        0x79t
        -0x73t
        0x4bt
        0x7at
        0x1at
        0x40t
        -0x78t
        -0x69t
        -0x5dt
        0x5t
        0x34t
        -0x24t
        -0x2et
        -0x54t
        -0x12t
        -0x2dt
        -0x43t
        -0x2bt
        -0x6ft
        0x65t
        0x39t
        0x65t
        -0x51t
        0x2ct
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

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

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

    .line 929
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 948
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 970
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 972
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1368
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1371
    goto/16 :goto_1

    .line 1357
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1360
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1363
    goto/16 :goto_1

    .line 1347
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ping()V

    .line 1350
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1351
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1352
    goto/16 :goto_1

    .line 1342
    :sswitch_3
    goto/16 :goto_1

    .line 1334
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1337
    goto/16 :goto_1

    .line 1300
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1303
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1305
    new-instance p2, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1308
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1309
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1310
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1311
    nop

    :goto_0
    if-ge p4, v0, :cond_1

    .line 1313
    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 1314
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1316
    if-eqz v4, :cond_0

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 1320
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1321
    nop

    .line 1311
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1324
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1326
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1328
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1329
    goto/16 :goto_1

    .line 1289
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1292
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1293
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_1

    .line 1277
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1281
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1282
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1284
    goto/16 :goto_1

    .line 1266
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1269
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1270
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1271
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1272
    goto/16 :goto_1

    .line 1256
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1260
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->simMgrSimStatusChangedInd(II)V

    .line 1261
    goto/16 :goto_1

    .line 1246
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1250
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->voWifiEmergencyAttachStateChangedInd(II)V

    .line 1251
    goto/16 :goto_1

    .line 1236
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1240
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->volteEmergencyBearerStateChangedInd(II)V

    .line 1241
    goto/16 :goto_1

    .line 1227
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1230
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->airPlaneModeExitRequestInd(I)V

    .line 1231
    goto/16 :goto_1

    .line 1216
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1221
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->IMSHandoverStateChangedInd(III)V

    .line 1222
    goto/16 :goto_1

    .line 1206
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1210
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->voWifiAttachStateChangedInd(II)V

    .line 1211
    goto/16 :goto_1

    .line 1196
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1200
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->RttMessageReceived(ILjava/util/ArrayList;)V

    .line 1201
    goto/16 :goto_1

    .line 1185
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1189
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1190
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->RttCPSCapabilityChangeInd(III)V

    .line 1191
    goto/16 :goto_1

    .line 1175
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1179
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsNewSmsStatusReportInd(ILjava/util/ArrayList;)V

    .line 1180
    goto/16 :goto_1

    .line 1165
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1169
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->earlyMediaInd(II)V

    .line 1170
    goto/16 :goto_1

    .line 1155
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1159
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsCsfbVendorCauseInd(ILjava/lang/String;)V

    .line 1160
    goto/16 :goto_1

    .line 1144
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1147
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;-><init>()V

    .line 1148
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1149
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsErrorCauseInd(ILvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;)V

    .line 1150
    goto/16 :goto_1

    .line 1134
    :sswitch_15
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1138
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsWifiParamInd(ILjava/util/ArrayList;)V

    .line 1139
    goto/16 :goto_1

    .line 1124
    :sswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1127
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1128
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsRegisterAddressChanged(ILjava/util/ArrayList;)V

    .line 1129
    goto/16 :goto_1

    .line 1113
    :sswitch_17
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1116
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 1117
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1118
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 1119
    goto/16 :goto_1

    .line 1103
    :sswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1107
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsHandoverStatusChanged(II)V

    .line 1108
    goto/16 :goto_1

    .line 1093
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1097
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsHandoverRequestInd(II)V

    .line 1098
    goto/16 :goto_1

    .line 1083
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1087
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsNetworkStateChanged(II)V

    .line 1088
    goto/16 :goto_1

    .line 1073
    :sswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1077
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->videoQualityInd(ILjava/util/ArrayList;)V

    .line 1078
    goto :goto_1

    .line 1063
    :sswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1067
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsBearerEstablished(II)V

    .line 1068
    goto :goto_1

    .line 1054
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1057
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->ImsCallStateChanged(I)V

    .line 1058
    goto :goto_1

    .line 1043
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1046
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;-><init>()V

    .line 1047
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1048
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->simRefresh(ILvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;)V

    .line 1049
    goto :goto_1

    .line 1032
    :sswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1035
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;-><init>()V

    .line 1036
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1037
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->suppSvcNotify(ILvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;)V

    .line 1038
    goto :goto_1

    .line 1022
    :sswitch_20
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1026
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1027
    goto :goto_1

    .line 1013
    :sswitch_21
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1016
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 1017
    goto :goto_1

    .line 1003
    :sswitch_22
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1007
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 1008
    nop

    .line 1380
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_21
        0x3 -> :sswitch_20
        0x4 -> :sswitch_1f
        0x5 -> :sswitch_1e
        0x6 -> :sswitch_1d
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x9 -> :sswitch_1a
        0xa -> :sswitch_19
        0xb -> :sswitch_18
        0xc -> :sswitch_17
        0xd -> :sswitch_16
        0xe -> :sswitch_15
        0xf -> :sswitch_14
        0x10 -> :sswitch_13
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_10
        0x14 -> :sswitch_f
        0x15 -> :sswitch_e
        0x16 -> :sswitch_d
        0x17 -> :sswitch_c
        0x18 -> :sswitch_b
        0x19 -> :sswitch_a
        0x1a -> :sswitch_9
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

    .line 954
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 982
    const-string v0, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 983
    return-object p0

    .line 985
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

    .line 989
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 944
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 976
    const/4 p1, 0x1

    return p1
.end method
