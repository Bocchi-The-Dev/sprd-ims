.class public abstract Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1048
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

    .line 1062
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1100
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1101
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1102
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1103
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1104
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

    .line 1074
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
        0x75t
        -0x73t
        0x34t
        -0x2dt
        -0x72t
        -0xat
        0x55t
        -0xdt
        0x9t
        -0x7at
        -0x4dt
        0x4bt
        0x7et
        0x43t
        -0x5et
        -0x78t
        0x72t
        -0x40t
        -0x52t
        0x40t
        0x20t
        -0x5at
        -0x1bt
        0x0t
        -0x6t
        0x7bt
        0x5t
        -0x26t
        -0x78t
        -0x11t
        0x7at
        0x77t
    .end array-data

    :array_1
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

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v2, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

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

    .line 1068
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1088
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1110
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1112
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v2, "vendor.sprd.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1615
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1618
    goto/16 :goto_1

    .line 1604
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1607
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1608
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1610
    goto/16 :goto_1

    .line 1594
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ping()V

    .line 1597
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1599
    goto/16 :goto_1

    .line 1589
    :sswitch_3
    goto/16 :goto_1

    .line 1581
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1584
    goto/16 :goto_1

    .line 1547
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1550
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1552
    new-instance p2, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1555
    const-wide/16 v1, 0x8

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1556
    const-wide/16 v1, 0xc

    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1557
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1558
    nop

    :goto_0
    if-ge p4, v0, :cond_1

    .line 1560
    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 1561
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1563
    if-eqz v4, :cond_0

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 1567
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1568
    nop

    .line 1558
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1571
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1573
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1576
    goto/16 :goto_1

    .line 1536
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1539
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_1

    .line 1524
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1528
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1529
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1531
    goto/16 :goto_1

    .line 1513
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1516
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1517
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1519
    goto/16 :goto_1

    .line 1503
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1507
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->holdToneInd(II)V

    .line 1508
    goto/16 :goto_1

    .line 1492
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1497
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onImsUssd(IILjava/lang/String;)V

    .line 1498
    goto/16 :goto_1

    .line 1482
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1485
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_1/DelegateRegistrationStateInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1486
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->featureTagRegistrationChangedInd(ILjava/util/ArrayList;)V

    .line 1487
    goto/16 :goto_1

    .line 1471
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1474
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;-><init>()V

    .line 1475
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1476
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsConfigurationChangedInd(ILvendor/sprd/hardware/radio/ims/V1_1/SipDelegateImsConfigurationInfo;)V

    .line 1477
    goto/16 :goto_1

    .line 1460
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1463
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;-><init>()V

    .line 1464
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1465
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->receiveSipMessageInd(ILvendor/sprd/hardware/radio/ims/V1_1/RcsSipMessage;)V

    .line 1466
    goto/16 :goto_1

    .line 1448
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1452
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1454
    invoke-virtual {p0, p1, p3, p4, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->sendSipMessageResultInd(IILjava/lang/String;I)V

    .line 1455
    goto/16 :goto_1

    .line 1437
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1440
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1442
    invoke-virtual {p0, p1, p3, v0, v1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onTerminatedInd(ILjava/lang/String;J)V

    .line 1443
    goto/16 :goto_1

    .line 1427
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1430
    invoke-static {p2}, Lvendor/sprd/hardware/radio/ims/V1_1/TerminatedReason;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1431
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onResourceTerminatedInd(ILjava/util/ArrayList;)V

    .line 1432
    goto/16 :goto_1

    .line 1417
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1420
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1421
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->notifyCapabilitiesChangedInd(ILjava/util/ArrayList;)V

    .line 1422
    goto/16 :goto_1

    .line 1406
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1411
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRemoteCapabilitiesDemandInd(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 1412
    goto/16 :goto_1

    .line 1396
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1400
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->simMgrSimStatusChangedInd(II)V

    .line 1401
    goto/16 :goto_1

    .line 1386
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1390
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->voWifiEmergencyAttachStateChangedInd(II)V

    .line 1391
    goto/16 :goto_1

    .line 1376
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1380
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->volteEmergencyBearerStateChangedInd(II)V

    .line 1381
    goto/16 :goto_1

    .line 1367
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1370
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->airPlaneModeExitRequestInd(I)V

    .line 1371
    goto/16 :goto_1

    .line 1356
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1361
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->IMSHandoverStateChangedInd(III)V

    .line 1362
    goto/16 :goto_1

    .line 1346
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1350
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->voWifiAttachStateChangedInd(II)V

    .line 1351
    goto/16 :goto_1

    .line 1336
    :sswitch_19
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1340
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->RttMessageReceived(ILjava/util/ArrayList;)V

    .line 1341
    goto/16 :goto_1

    .line 1325
    :sswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1330
    invoke-virtual {p0, p1, p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->RttCPSCapabilityChangeInd(III)V

    .line 1331
    goto/16 :goto_1

    .line 1315
    :sswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1318
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1319
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsNewSmsStatusReportInd(ILjava/util/ArrayList;)V

    .line 1320
    goto/16 :goto_1

    .line 1305
    :sswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1309
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->earlyMediaInd(II)V

    .line 1310
    goto/16 :goto_1

    .line 1295
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1299
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsCsfbVendorCauseInd(ILjava/lang/String;)V

    .line 1300
    goto/16 :goto_1

    .line 1284
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1287
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;-><init>()V

    .line 1288
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1289
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsErrorCauseInd(ILvendor/sprd/hardware/radio/ims/V1_0/ImsErrorCauseInfo;)V

    .line 1290
    goto/16 :goto_1

    .line 1274
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1278
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsWifiParamInd(ILjava/util/ArrayList;)V

    .line 1279
    goto/16 :goto_1

    .line 1264
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1268
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsRegisterAddressChanged(ILjava/util/ArrayList;)V

    .line 1269
    goto/16 :goto_1

    .line 1253
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1256
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;-><init>()V

    .line 1257
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1258
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsNetworkInfoChanged(ILvendor/sprd/hardware/radio/ims/V1_0/ImsNetworkInfo;)V

    .line 1259
    goto/16 :goto_1

    .line 1243
    :sswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1247
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsHandoverStatusChanged(II)V

    .line 1248
    goto/16 :goto_1

    .line 1233
    :sswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1237
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsHandoverRequestInd(II)V

    .line 1238
    goto/16 :goto_1

    .line 1223
    :sswitch_24
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1227
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsNetworkStateChanged(II)V

    .line 1228
    goto/16 :goto_1

    .line 1213
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1217
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->videoQualityInd(ILjava/util/ArrayList;)V

    .line 1218
    goto :goto_1

    .line 1203
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1207
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsBearerEstablished(II)V

    .line 1208
    goto :goto_1

    .line 1194
    :sswitch_27
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1197
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ImsCallStateChanged(I)V

    .line 1198
    goto :goto_1

    .line 1183
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1186
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;-><init>()V

    .line 1187
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1188
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->simRefresh(ILvendor/sprd/hardware/radio/ims/V1_0/SimRefreshResult;)V

    .line 1189
    goto :goto_1

    .line 1172
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1175
    new-instance p3, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;

    invoke-direct {p3}, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;-><init>()V

    .line 1176
    invoke-virtual {p3, p2}, Lvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1177
    invoke-virtual {p0, p1, p3}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->suppSvcNotify(ILvendor/sprd/hardware/radio/ims/V1_0/SuppSvcNotification;)V

    .line 1178
    goto :goto_1

    .line 1162
    :sswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1166
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1167
    goto :goto_1

    .line 1153
    :sswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1156
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 1157
    goto :goto_1

    .line 1143
    :sswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1147
    invoke-virtual {p0, p1, p2}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 1148
    nop

    .line 1627
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_29
        0x5 -> :sswitch_28
        0x6 -> :sswitch_27
        0x7 -> :sswitch_26
        0x8 -> :sswitch_25
        0x9 -> :sswitch_24
        0xa -> :sswitch_23
        0xb -> :sswitch_22
        0xc -> :sswitch_21
        0xd -> :sswitch_20
        0xe -> :sswitch_1f
        0xf -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1b
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_19
        0x15 -> :sswitch_18
        0x16 -> :sswitch_17
        0x17 -> :sswitch_16
        0x18 -> :sswitch_15
        0x19 -> :sswitch_14
        0x1a -> :sswitch_13
        0x1b -> :sswitch_12
        0x1c -> :sswitch_11
        0x1d -> :sswitch_10
        0x1e -> :sswitch_f
        0x1f -> :sswitch_e
        0x20 -> :sswitch_d
        0x21 -> :sswitch_c
        0x22 -> :sswitch_b
        0x23 -> :sswitch_a
        0x24 -> :sswitch_9
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

    .line 1094
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1122
    const-string v0, "vendor.sprd.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1123
    return-object p0

    .line 1125
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

    .line 1129
    invoke-virtual {p0, p1}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1084
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/sprd/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1116
    const/4 p1, 0x1

    return p1
.end method
