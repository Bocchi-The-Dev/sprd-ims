.class Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    const/4 v0, -0x1

    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    .line 1374
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1371
    iput-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1372
    return-void
.end method


# virtual methods
.method public ImsAddGroupCall(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1387
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1390
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    if-eqz p1, :cond_0

    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1397
    nop

    .line 1398
    return-void

    .line 1392
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsAddGroupCall is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1396
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1397
    throw p1
.end method

.method public ImsEnableLocalConference(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1403
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1406
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    if-eqz p1, :cond_0

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1408
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsEnableLocalConference is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    throw p1
.end method

.method public ImsHandover(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1419
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1429
    nop

    .line 1430
    return-void

    .line 1424
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsHandover is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1429
    throw p1
.end method

.method public ImsHoldSingleCall(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1435
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1439
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1446
    nop

    .line 1447
    return-void

    .line 1441
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsHoldSingleCall is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1446
    throw p1
.end method

.method public ImsInitialGroupCall(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1452
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    if-eqz p1, :cond_0

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    nop

    .line 1463
    return-void

    .line 1457
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsInitialGroupCall is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    throw p1
.end method

.method public ImsMuteSingleCall(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1468
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1472
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    if-eqz p1, :cond_0

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    nop

    .line 1480
    return-void

    .line 1474
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsMuteSingleCall is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    throw p1
.end method

.method public ImsSilenceSingleCall(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1485
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    if-eqz p1, :cond_0

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    nop

    .line 1497
    return-void

    .line 1491
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method ImsSilenceSingleCall is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    throw p1
.end method

.method public acceptCall(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1502
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    if-eqz p1, :cond_0

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    nop

    .line 1512
    return-void

    .line 1506
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method acceptCall is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1377
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bootstrapAuthentication(IIILjava/lang/String;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1517
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1523
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1524
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    if-eqz p1, :cond_0

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1531
    nop

    .line 1532
    return-void

    .line 1526
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method bootstrapAuthentication is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1531
    throw p1
.end method

.method public callMediaChangeRequestTimeOut(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1537
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    if-eqz p1, :cond_0

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    nop

    .line 1548
    return-void

    .line 1542
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method callMediaChangeRequestTimeOut is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw p1
.end method

.method public closeDialog(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1553
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1556
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    if-eqz p1, :cond_0

    .line 1562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1563
    nop

    .line 1564
    return-void

    .line 1558
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method closeDialog is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1563
    throw p1
.end method

.method public conference(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1569
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    if-eqz p1, :cond_0

    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    nop

    .line 1579
    return-void

    .line 1573
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method conference is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1577
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    throw p1
.end method

.method public dial(ILvendor/unisoc/hardware/radio/ims/Dial;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1584
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1587
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    if-eqz p1, :cond_0

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    nop

    .line 1595
    return-void

    .line 1589
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method dial is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1593
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    throw p1
.end method

.method public dialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1600
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1603
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    if-eqz p1, :cond_0

    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1610
    nop

    .line 1611
    return-void

    .line 1605
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method dialRTT is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1609
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1610
    throw p1
.end method

.method public emergencyDial(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1616
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1619
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1623
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1624
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    if-eqz p1, :cond_0

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    nop

    .line 1632
    return-void

    .line 1626
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method emergencyDial is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    throw p1
.end method

.method public emergencyDialRTT(ILvendor/unisoc/hardware/radio/ims/Dial;I[Ljava/lang/String;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1640
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1644
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    if-eqz p1, :cond_0

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    nop

    .line 1653
    return-void

    .line 1647
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method emergencyDialRTT is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1651
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    throw p1
.end method

.method public enableIms(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1658
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1661
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    if-eqz p1, :cond_0

    .line 1667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1668
    nop

    .line 1669
    return-void

    .line 1663
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method enableIms is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1667
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1668
    throw p1
.end method

.method public enableLocalHold(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1674
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1677
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    if-eqz p1, :cond_0

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    nop

    .line 1685
    return-void

    .line 1679
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method enableLocalHold is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1683
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    throw p1
.end method

.method public enableWiFiParamReport(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1693
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    if-eqz p1, :cond_0

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    nop

    .line 1701
    return-void

    .line 1695
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method enableWiFiParamReport is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    throw p1
.end method

.method public explicitCallTransfer(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    if-eqz p1, :cond_0

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return-void

    .line 1710
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method explicitCallTransfer is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw p1
.end method

.method public getCallForwardStatusUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1724
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    if-eqz p1, :cond_0

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1726
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getCallForwardStatusUri is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw p1
.end method

.method public getCallWaiting(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    if-eqz p1, :cond_0

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    nop

    .line 1748
    return-void

    .line 1742
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getCallWaiting is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1746
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw p1
.end method

.method public getClip(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    if-eqz p1, :cond_0

    .line 1761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    nop

    .line 1763
    return-void

    .line 1757
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getClip is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    throw p1
.end method

.method public getClir(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1768
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    if-eqz p1, :cond_0

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1777
    nop

    .line 1778
    return-void

    .line 1772
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getClir is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1777
    throw p1
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1789
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    if-eqz p1, :cond_0

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    nop

    .line 1797
    return-void

    .line 1791
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getFacilityLockForApp is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1795
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    throw p1
.end method

.method public getImsBearerState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1802
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    if-eqz p1, :cond_0

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    nop

    .line 1812
    return-void

    .line 1806
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsBearerState is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1810
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    throw p1
.end method

.method public getImsCurrentCalls(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1817
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    if-eqz p1, :cond_0

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    nop

    .line 1827
    return-void

    .line 1821
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsCurrentCalls is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1825
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw p1
.end method

.method public getImsPaniInfo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    if-eqz p1, :cond_0

    .line 1840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    nop

    .line 1842
    return-void

    .line 1836
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsPaniInfo is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1840
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    throw p1
.end method

.method public getImsPcscfAddress(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1847
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    if-eqz p1, :cond_0

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1851
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsPcscfAddress is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1855
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    throw p1
.end method

.method public getImsRegAddress(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    if-eqz p1, :cond_0

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1871
    nop

    .line 1872
    return-void

    .line 1866
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsRegAddress is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1870
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1871
    throw p1
.end method

.method public getImsRegistrationState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1877
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    if-eqz p1, :cond_0

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    nop

    .line 1887
    return-void

    .line 1881
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsRegistrationState is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw p1
.end method

.method public getImsStackVersion(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1892
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    if-eqz p1, :cond_0

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    nop

    .line 1902
    return-void

    .line 1896
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsStackVersion is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1900
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    throw p1
.end method

.method public getImsUserAgent(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1907
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    if-eqz p1, :cond_0

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    nop

    .line 1917
    return-void

    .line 1911
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsUserAgent is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1915
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    throw p1
.end method

.method public getImsVoiceCallAvailability(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1922
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    if-eqz p1, :cond_0

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1931
    nop

    .line 1932
    return-void

    .line 1926
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsVoiceCallAvailability is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1930
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1931
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1381
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2972
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2976
    :try_start_1
    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2977
    iget-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2979
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2981
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2983
    goto :goto_0

    .line 2981
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2983
    throw v2

    .line 2985
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 2971
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2955
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2959
    :try_start_0
    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2960
    iget-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2962
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2966
    goto :goto_0

    .line 2964
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2966
    throw v2

    .line 2968
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getLastCallFailCause(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    if-eqz p1, :cond_0

    .line 1945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    nop

    .line 1947
    return-void

    .line 1941
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getLastCallFailCause is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    throw p1
.end method

.method public getPAU(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1952
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1955
    if-eqz p1, :cond_0

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    nop

    .line 1962
    return-void

    .line 1956
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getPAU is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1960
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    throw p1
.end method

.method public getRTTAllowedPLMN(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1967
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x25

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    if-eqz p1, :cond_0

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    nop

    .line 1977
    return-void

    .line 1971
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getRTTAllowedPLMN is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1975
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw p1
.end method

.method public getSmsBearer(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1982
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1984
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x26

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    if-eqz p1, :cond_0

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1986
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getSmsBearer is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1990
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    throw p1
.end method

.method public getSpecialRatcap(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    if-eqz p1, :cond_0

    .line 2006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    nop

    .line 2008
    return-void

    .line 2002
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getSpecialRatcap is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    throw p1
.end method

.method public getSrvccCapbility(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2013
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    if-eqz p1, :cond_0

    .line 2021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    nop

    .line 2023
    return-void

    .line 2017
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getSrvccCapbility is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    throw p1
.end method

.method public getVideoResolution(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2028
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x29

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    if-eqz p1, :cond_0

    .line 2036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    nop

    .line 2038
    return-void

    .line 2032
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getVideoResolution is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    throw p1
.end method

.method public getVoLTEAllowedPLMN(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2043
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    if-eqz p1, :cond_0

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    nop

    .line 2053
    return-void

    .line 2047
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getVoLTEAllowedPLMN is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    throw p1
.end method

.method public hangup(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2058
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2b

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    if-eqz p1, :cond_0

    .line 2067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2068
    nop

    .line 2069
    return-void

    .line 2063
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method hangup is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2068
    throw p1
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2074
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    if-eqz p1, :cond_0

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    nop

    .line 2084
    return-void

    .line 2078
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method hangupForegroundResumeBackground is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2082
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    throw p1
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    if-eqz p1, :cond_0

    .line 2097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    nop

    .line 2099
    return-void

    .line 2093
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method hangupWaitingOrBackground is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2097
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    throw p1
.end method

.method public holdActiveCall(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2104
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    if-eqz p1, :cond_0

    .line 2112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    nop

    .line 2114
    return-void

    .line 2108
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method holdActiveCall is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2112
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    throw p1
.end method

.method public initISIM(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2119
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    if-eqz p1, :cond_0

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    nop

    .line 2129
    return-void

    .line 2123
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method initISIM is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2127
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    throw p1
.end method

.method public notifyDataRouterUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2134
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    if-eqz p1, :cond_0

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2143
    nop

    .line 2144
    return-void

    .line 2138
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyDataRouterUpdate is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2142
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2143
    throw p1
.end method

.method public notifyHandoverCallInfo(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2149
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2152
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x31

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2153
    if-eqz p1, :cond_0

    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    nop

    .line 2160
    return-void

    .line 2154
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyHandoverCallInfo is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2158
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    throw p1
.end method

.method public notifyImsCallEnd(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2165
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2169
    if-eqz p1, :cond_0

    .line 2174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2175
    nop

    .line 2176
    return-void

    .line 2170
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyImsCallEnd is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2175
    throw p1
.end method

.method public notifyImsHandoverStatusUpdate(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2181
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    if-eqz p1, :cond_0

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    nop

    .line 2192
    return-void

    .line 2186
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyImsHandoverStatusUpdate is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2190
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    throw p1
.end method

.method public notifyImsNetworkInfoChanged(ILvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2197
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2200
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    if-eqz p1, :cond_0

    .line 2206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    nop

    .line 2208
    return-void

    .line 2202
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyImsNetworkInfoChanged is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2206
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    throw p1
.end method

.method public notifyVoWifiCallStateChanged(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2213
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2216
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x35

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    if-eqz p1, :cond_0

    .line 2222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    nop

    .line 2224
    return-void

    .line 2218
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyVoWifiCallStateChanged is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    throw p1
.end method

.method public notifyVoWifiEnable(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2229
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2232
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x36

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    if-eqz p1, :cond_0

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    nop

    .line 2240
    return-void

    .line 2234
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyVoWifiEnable is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2238
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    throw p1
.end method

.method public notifyVoWifiWhiteList(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2245
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x37

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    if-eqz p1, :cond_0

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    nop

    .line 2256
    return-void

    .line 2250
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method notifyVoWifiWhiteList is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2254
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    throw p1
.end method

.method public publishCapabilities(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2261
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2264
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    if-eqz p1, :cond_0

    .line 2270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2271
    nop

    .line 2272
    return-void

    .line 2266
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method publishCapabilities is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2270
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2271
    throw p1
.end method

.method public queryColp(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2277
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2280
    if-eqz p1, :cond_0

    .line 2285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2286
    nop

    .line 2287
    return-void

    .line 2281
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method queryColp is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2286
    throw p1
.end method

.method public queryColr(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2292
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    if-eqz p1, :cond_0

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    nop

    .line 2302
    return-void

    .line 2296
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method queryColr is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2300
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    throw p1
.end method

.method public rejectCall(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2307
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    if-eqz p1, :cond_0

    .line 2315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2316
    nop

    .line 2317
    return-void

    .line 2311
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method rejectCall is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2316
    throw p1
.end method

.method public requestVolteCallMediaChange(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2326
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    if-eqz p1, :cond_0

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    nop

    .line 2334
    return-void

    .line 2328
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method requestVolteCallMediaChange is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2332
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    throw p1
.end method

.method public responseAcknowledgement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2339
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2340
    iget-object v1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    if-eqz v1, :cond_0

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    nop

    .line 2348
    return-void

    .line 2342
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Method responseAcknowledgement is unimplemented."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    throw v1
.end method

.method public responseVolteCallMediaChange(IIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2353
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2357
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3e

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    if-eqz p1, :cond_0

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    nop

    .line 2366
    return-void

    .line 2360
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method responseVolteCallMediaChange is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2364
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    throw p1
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2371
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2374
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    if-eqz p1, :cond_0

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    nop

    .line 2382
    return-void

    .line 2376
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendDtmf is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2380
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    throw p1
.end method

.method public sendOptionsCapabilityRequest(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2387
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2391
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x40

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    if-eqz p1, :cond_0

    .line 2397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2398
    nop

    .line 2399
    return-void

    .line 2393
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendOptionsCapabilityRequest is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2397
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2398
    throw p1
.end method

.method public sendRTTMessage(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2407
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x41

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2408
    if-eqz p1, :cond_0

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    nop

    .line 2415
    return-void

    .line 2409
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendRTTMessage is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2413
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    throw p1
.end method

.method public sendSipMessage(ILvendor/unisoc/hardware/radio/ims/RcsSipMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2423
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x42

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2424
    if-eqz p1, :cond_0

    .line 2429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2430
    nop

    .line 2431
    return-void

    .line 2425
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendSipMessage is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2429
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2430
    throw p1
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2436
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2438
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x43

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    if-eqz p1, :cond_0

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    nop

    .line 2447
    return-void

    .line 2441
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendUssd is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2445
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    throw p1
.end method

.method public separateConnection(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2452
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x44

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    if-eqz p1, :cond_0

    .line 2461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2462
    nop

    .line 2463
    return-void

    .line 2457
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method separateConnection is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2461
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2462
    throw p1
.end method

.method public setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2468
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2473
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x45

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2474
    if-eqz p1, :cond_0

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    nop

    .line 2481
    return-void

    .line 2475
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setBarringPassword is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    throw p1
.end method

.method public setCallForwardUri(ILvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2486
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2489
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x46

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    if-eqz p1, :cond_0

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2496
    nop

    .line 2497
    return-void

    .line 2491
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCallForwardUri is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2495
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2496
    throw p1
.end method

.method public setCallWaiting(IZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2502
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2505
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x47

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    if-eqz p1, :cond_0

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    nop

    .line 2514
    return-void

    .line 2508
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCallWaiting is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2512
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    throw p1
.end method

.method public setCarrierImsUserAgent(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2519
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2522
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x48

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    if-eqz p1, :cond_0

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    nop

    .line 2530
    return-void

    .line 2524
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCarrierImsUserAgent is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2528
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    throw p1
.end method

.method public setClir(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2535
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2537
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2538
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2539
    if-eqz p1, :cond_0

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    nop

    .line 2546
    return-void

    .line 2540
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setClir is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2544
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    throw p1
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2551
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2555
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4a

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    if-eqz p1, :cond_0

    .line 2564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2565
    nop

    .line 2566
    return-void

    .line 2560
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setFacilityLockForApp is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2564
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2565
    throw p1
.end method

.method public setImsInitialAttachApn(ILvendor/unisoc/hardware/radio/ims/DataProfileInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2571
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2574
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4b

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    if-eqz p1, :cond_0

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2581
    nop

    .line 2582
    return-void

    .line 2576
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsInitialAttachApn is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2580
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2581
    throw p1
.end method

.method public setImsPcscfAddress(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2590
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    if-eqz p1, :cond_0

    .line 2596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2597
    nop

    .line 2598
    return-void

    .line 2592
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsPcscfAddress is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2597
    throw p1
.end method

.method public setImsRegAddress(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2603
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2607
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4d

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    if-eqz p1, :cond_0

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    nop

    .line 2615
    return-void

    .line 2609
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsRegAddress is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2613
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    throw p1
.end method

.method public setImsResponseFunctions(Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;Lvendor/unisoc/hardware/radio/ims/IImsRadioIndication;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2621
    :try_start_0
    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2624
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    .line 2625
    if-eqz p1, :cond_0

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    nop

    .line 2634
    return-void

    .line 2626
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsResponseFunctions is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    throw p1
.end method

.method public setImsSmscAddress(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2639
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2642
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    if-eqz p1, :cond_0

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2649
    nop

    .line 2650
    return-void

    .line 2644
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsSmscAddress is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2648
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2649
    throw p1
.end method

.method public setImsVoiceCallAvailability(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2655
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2658
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    if-eqz p1, :cond_0

    .line 2664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2665
    nop

    .line 2666
    return-void

    .line 2660
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setImsVoiceCallAvailability is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2664
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2665
    throw p1
.end method

.method public setLocalTone(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2941
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2943
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2944
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x62

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2945
    if-eqz p1, :cond_0

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    nop

    .line 2952
    return-void

    .line 2946
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setLocalTone is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2950
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    throw p1
.end method

.method public setMute(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2671
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2674
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x51

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    if-eqz p1, :cond_0

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2676
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setMute is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2680
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    throw p1
.end method

.method public setPAU(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2687
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2689
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2690
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x52

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    if-eqz p1, :cond_0

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2692
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setPAU is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2696
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    throw p1
.end method

.method public setRTTChannelEnable(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2706
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x53

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    if-eqz p1, :cond_0

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    nop

    .line 2714
    return-void

    .line 2708
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setRTTChannelEnable is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2712
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    throw p1
.end method

.method public setRTTEnable(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2719
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2722
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x54

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    if-eqz p1, :cond_0

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2729
    nop

    .line 2730
    return-void

    .line 2724
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setRTTEnable is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2728
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2729
    throw p1
.end method

.method public setSmsBearer(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2735
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x55

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    if-eqz p1, :cond_0

    .line 2744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    nop

    .line 2746
    return-void

    .line 2740
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSmsBearer is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2744
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    throw p1
.end method

.method public setUceCapabilities(I[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2751
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2754
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x56

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    if-eqz p1, :cond_0

    .line 2760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    nop

    .line 2762
    return-void

    .line 2756
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setUceCapabilities is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2760
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    throw p1
.end method

.method public setVideoResolution(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2767
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x57

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2771
    if-eqz p1, :cond_0

    .line 2776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2777
    nop

    .line 2778
    return-void

    .line 2772
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setVideoResolution is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2776
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2777
    throw p1
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2783
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2786
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x58

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    if-eqz p1, :cond_0

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    nop

    .line 2794
    return-void

    .line 2788
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method startDtmf is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2792
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    throw p1
.end method

.method public stopDtmf(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2799
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x59

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    if-eqz p1, :cond_0

    .line 2807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2808
    nop

    .line 2809
    return-void

    .line 2803
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method stopDtmf is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2807
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2808
    throw p1
.end method

.method public subscribeForCapabilities(I[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2814
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2817
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2818
    if-eqz p1, :cond_0

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    nop

    .line 2825
    return-void

    .line 2819
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method subscribeForCapabilities is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2823
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    throw p1
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2830
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2833
    if-eqz p1, :cond_0

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    nop

    .line 2840
    return-void

    .line 2834
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method switchWaitingOrHoldingAndActive is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2838
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    throw p1
.end method

.method public triggerFullNetworkRegistration(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2845
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2849
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5c

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2850
    if-eqz p1, :cond_0

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    nop

    .line 2857
    return-void

    .line 2851
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method triggerFullNetworkRegistration is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2855
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    throw p1
.end method

.method public triggerSipDelegateDeregistration(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2862
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2864
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2865
    if-eqz p1, :cond_0

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2871
    nop

    .line 2872
    return-void

    .line 2866
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method triggerSipDelegateDeregistration is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2870
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2871
    throw p1
.end method

.method public updateCLIP(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2877
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5e

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    if-eqz p1, :cond_0

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2887
    nop

    .line 2888
    return-void

    .line 2882
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method updateCLIP is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2886
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2887
    throw p1
.end method

.method public updateSipDelegateRegistration(I[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2896
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2897
    if-eqz p1, :cond_0

    .line 2902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2903
    nop

    .line 2904
    return-void

    .line 2898
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method updateSipDelegateRegistration is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2902
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2903
    throw p1
.end method

.method public videoPhoneDial(ILvendor/unisoc/hardware/radio/ims/VideoPhoneDial;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2909
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2911
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2912
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x60

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2913
    if-eqz p1, :cond_0

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    nop

    .line 2920
    return-void

    .line 2914
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method videoPhoneDial is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2918
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    throw p1
.end method

.method public volteCallFallBackToVoice(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2925
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2928
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x61

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    if-eqz p1, :cond_0

    .line 2934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    nop

    .line 2936
    return-void

    .line 2930
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method volteCallFallBackToVoice is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2934
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    throw p1
.end method
