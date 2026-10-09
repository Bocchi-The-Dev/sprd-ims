.class Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub;
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

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    const/4 v0, -0x1

    iput v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    .line 1226
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1223
    iput-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1224
    return-void
.end method


# virtual methods
.method public ImsAddGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1239
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1240
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1241
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1248
    nop

    .line 1249
    return-void

    .line 1243
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsAddGroupCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1248
    throw p1
.end method

.method public ImsEnableLocalConferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1254
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1255
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1256
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    if-eqz p1, :cond_0

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1263
    nop

    .line 1264
    return-void

    .line 1258
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsEnableLocalConferenceResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1263
    throw p1
.end method

.method public ImsHandoverResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1269
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1271
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    if-eqz p1, :cond_0

    .line 1277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1278
    nop

    .line 1279
    return-void

    .line 1273
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsHandoverResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1278
    throw p1
.end method

.method public ImsHoldSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1284
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1286
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    if-eqz p1, :cond_0

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    nop

    .line 1294
    return-void

    .line 1288
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsHoldSingleCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    throw p1
.end method

.method public ImsInitialGroupCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1299
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1301
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    if-eqz p1, :cond_0

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1303
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsInitialGroupCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    throw p1
.end method

.method public ImsMuteSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1314
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1315
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1316
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    if-eqz p1, :cond_0

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    nop

    .line 1324
    return-void

    .line 1318
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsMuteSingleCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    throw p1
.end method

.method public ImsSilenceSingleCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1329
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1330
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1331
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    if-eqz p1, :cond_0

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    nop

    .line 1339
    return-void

    .line 1333
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method ImsSilenceSingleCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    throw p1
.end method

.method public acceptCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1344
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1346
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    if-eqz p1, :cond_0

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    nop

    .line 1354
    return-void

    .line 1348
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method acceptCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1229
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bootstrapAuthenticationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/GbaResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1359
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1360
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1361
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1362
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    if-eqz p1, :cond_0

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1369
    nop

    .line 1370
    return-void

    .line 1364
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method bootstrapAuthenticationResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1369
    throw p1
.end method

.method public callMediaChangeRequestTimeOutResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1375
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1376
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1377
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    if-eqz p1, :cond_0

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    nop

    .line 1385
    return-void

    .line 1379
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method callMediaChangeRequestTimeOutResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    throw p1
.end method

.method public closeDialogResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1390
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1399
    nop

    .line 1400
    return-void

    .line 1394
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method closeDialogResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1399
    throw p1
.end method

.method public conferenceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1405
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1406
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1407
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1408
    if-eqz p1, :cond_0

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1414
    nop

    .line 1415
    return-void

    .line 1409
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method conferenceResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1413
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1414
    throw p1
.end method

.method public dialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1420
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1422
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string v1, "Method dialRTTResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public dialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
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
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1437
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    if-eqz p1, :cond_0

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    nop

    .line 1445
    return-void

    .line 1439
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method dialResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    throw p1
.end method

.method public emergencyDialRTTResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1450
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1451
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1452
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    if-eqz p1, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    nop

    .line 1460
    return-void

    .line 1454
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method emergencyDialRTTResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1458
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    throw p1
.end method

.method public emergencyDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1465
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1466
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1467
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    if-eqz p1, :cond_0

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1469
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method emergencyDialResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    throw p1
.end method

.method public enableImsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1482
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    if-eqz p1, :cond_0

    .line 1488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    nop

    .line 1490
    return-void

    .line 1484
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method enableImsResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    throw p1
.end method

.method public enableLocalHoldResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1495
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1496
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1497
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1504
    nop

    .line 1505
    return-void

    .line 1499
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method enableLocalHoldResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1503
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1504
    throw p1
.end method

.method public enableWiFiParamReportResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1510
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1512
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    if-eqz p1, :cond_0

    .line 1518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1519
    nop

    .line 1520
    return-void

    .line 1514
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method enableWiFiParamReportResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1519
    throw p1
.end method

.method public explicitCallTransferResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1525
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1527
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    if-eqz p1, :cond_0

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1529
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method explicitCallTransferResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    throw p1
.end method

.method public getCallForwardStatusUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallForwardInfoUri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1540
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1542
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1543
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    if-eqz p1, :cond_0

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1550
    nop

    .line 1551
    return-void

    .line 1545
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getCallForwardStatusUriResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1550
    throw p1
.end method

.method public getCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1556
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1559
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    if-eqz p1, :cond_0

    .line 1566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1567
    nop

    .line 1568
    return-void

    .line 1562
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getCallWaitingResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1566
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1567
    throw p1
.end method

.method public getClipResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1573
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1574
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1575
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    if-eqz p1, :cond_0

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    nop

    .line 1584
    return-void

    .line 1578
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getClipResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    throw p1
.end method

.method public getClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1589
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1590
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x18

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    if-eqz p1, :cond_0

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1595
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getClirResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw p1
.end method

.method public getFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1607
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    if-eqz p1, :cond_0

    .line 1615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    nop

    .line 1617
    return-void

    .line 1611
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getFacilityLockForAppResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1615
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    throw p1
.end method

.method public getImsBearerStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1622
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1623
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    if-eqz p1, :cond_0

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1627
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsBearerStateResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1631
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw p1
.end method

.method public getImsCurrentCallsResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/CallVoLTE;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1638
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1639
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1640
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1641
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1b

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    if-eqz p1, :cond_0

    .line 1647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1648
    nop

    .line 1649
    return-void

    .line 1643
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsCurrentCallsResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1647
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1648
    throw p1
.end method

.method public getImsPaniInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/ImsNetworkInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1654
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1656
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1657
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    if-eqz p1, :cond_0

    .line 1663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    nop

    .line 1665
    return-void

    .line 1659
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsPaniInfoResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1663
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    throw p1
.end method

.method public getImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1670
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1671
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    if-eqz p1, :cond_0

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    nop

    .line 1681
    return-void

    .line 1675
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsPcscfAddressResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1679
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    throw p1
.end method

.method public getImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1686
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1687
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1688
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1689
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    if-eqz p1, :cond_0

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    nop

    .line 1697
    return-void

    .line 1691
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsRegAddressResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    throw p1
.end method

.method public getImsRegistrationStateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1f

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    if-eqz p1, :cond_0

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    nop

    .line 1714
    return-void

    .line 1708
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsRegistrationStateResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1712
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    throw p1
.end method

.method public getImsStackVersionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1719
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1720
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1721
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    if-eqz p1, :cond_0

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    nop

    .line 1730
    return-void

    .line 1724
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsStackVersionResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    throw p1
.end method

.method public getImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1735
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1738
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    if-eqz p1, :cond_0

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    nop

    .line 1746
    return-void

    .line 1740
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsUserAgentResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1744
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    throw p1
.end method

.method public getImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1751
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1752
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    if-eqz p1, :cond_0

    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1761
    nop

    .line 1762
    return-void

    .line 1756
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getImsVoiceCallAvailabilityResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1760
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1761
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1233
    sget-object v0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 2728
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2732
    :try_start_1
    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    iget-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2737
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    goto :goto_0

    .line 2737
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    throw v2

    .line 2741
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 2727
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

    .line 2711
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2715
    :try_start_0
    sget-object v2, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2716
    iget-object v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    goto :goto_0

    .line 2720
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    throw v2

    .line 2724
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getLastCallFailCauseResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/LastCallFailCauseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1767
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1768
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1769
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1770
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x23

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string p2, "Method getLastCallFailCauseResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public getPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Ljava/lang/String;)V
    .locals 3
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
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1786
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x24

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    if-eqz p1, :cond_0

    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    nop

    .line 1794
    return-void

    .line 1788
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getPAUResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    throw p1
.end method

.method public getRTTAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1799
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1800
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x25

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    if-eqz p1, :cond_0

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    nop

    .line 1810
    return-void

    .line 1804
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getRTTAllowedPLMNResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    throw p1
.end method

.method public getSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1815
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1816
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x26

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    if-eqz p1, :cond_0

    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1825
    nop

    .line 1826
    return-void

    .line 1820
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getSmsBearerResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1825
    throw p1
.end method

.method public getSpecialRatcapResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1831
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1832
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string p2, "Method getSpecialRatcapResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public getSrvccCapbilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
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
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    if-eqz p1, :cond_0

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    nop

    .line 1858
    return-void

    .line 1852
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getSrvccCapbilityResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1856
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    throw p1
.end method

.method public getVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1863
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x29

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    if-eqz p1, :cond_0

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    nop

    .line 1874
    return-void

    .line 1868
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getVideoResolutionResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1872
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw p1
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1880
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1881
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    if-eqz p1, :cond_0

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1889
    nop

    .line 1890
    return-void

    .line 1884
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method getVoLTEAllowedPLMNResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1888
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1889
    throw p1
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1895
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1896
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1897
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1898
    if-eqz p1, :cond_0

    .line 1903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1904
    nop

    .line 1905
    return-void

    .line 1899
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method hangupForegroundResumeBackgroundResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1904
    throw p1
.end method

.method public hangupResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1910
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1911
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1912
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    if-eqz p1, :cond_0

    .line 1918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1919
    nop

    .line 1920
    return-void

    .line 1914
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method hangupResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1918
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1919
    throw p1
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1925
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1927
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    if-eqz p1, :cond_0

    .line 1933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1934
    nop

    .line 1935
    return-void

    .line 1929
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method hangupWaitingOrBackgroundResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1933
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1934
    throw p1
.end method

.method public holdActiveCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1940
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1942
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    if-eqz p1, :cond_0

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    nop

    .line 1950
    return-void

    .line 1944
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method holdActiveCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1948
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    throw p1
.end method

.method public initISIMResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1956
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1959
    if-eqz p1, :cond_0

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    nop

    .line 1966
    return-void

    .line 1960
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method initISIMResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1964
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw p1
.end method

.method public notifyDataRouterUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1973
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    if-eqz p1, :cond_0

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1975
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyDataRouterUpdateResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1979
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    throw p1
.end method

.method public notifyHandoverCallInfoResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1986
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1987
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1988
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    if-eqz p1, :cond_0

    .line 1994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    nop

    .line 1996
    return-void

    .line 1990
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyHandoverCallInfoResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    throw p1
.end method

.method public notifyImsCallEndResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2001
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2003
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    if-eqz p1, :cond_0

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    nop

    .line 2011
    return-void

    .line 2005
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyImsCallEndResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    throw p1
.end method

.method public notifyImsHandoverStatusUpdateResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2016
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2017
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2018
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    if-eqz p1, :cond_0

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    nop

    .line 2026
    return-void

    .line 2020
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyImsHandoverStatusUpdateResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2024
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    throw p1
.end method

.method public notifyImsNetworkInfoChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2031
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2033
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    if-eqz p1, :cond_0

    .line 2039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2040
    nop

    .line 2041
    return-void

    .line 2035
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyImsNetworkInfoChangedResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2040
    throw p1
.end method

.method public notifyVoWifiCallStateChangedResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2046
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2047
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2048
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    if-eqz p1, :cond_0

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    nop

    .line 2056
    return-void

    .line 2050
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyVoWifiCallStateChangedResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2054
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2055
    throw p1
.end method

.method public notifyVoWifiEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2061
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2063
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    if-eqz p1, :cond_0

    .line 2069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2070
    nop

    .line 2071
    return-void

    .line 2065
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyVoWifiEnableResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2069
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2070
    throw p1
.end method

.method public notifyVoWifiWhiteListResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2077
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2078
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2079
    if-eqz p1, :cond_0

    .line 2084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    nop

    .line 2086
    return-void

    .line 2080
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method notifyVoWifiWhiteListResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2084
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    throw p1
.end method

.method public publishCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2091
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2092
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2093
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2094
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    if-eqz p1, :cond_0

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    nop

    .line 2102
    return-void

    .line 2096
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method publishCapabilitiesResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2100
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    throw p1
.end method

.method public queryColpResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2107
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    if-eqz p1, :cond_0

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    nop

    .line 2118
    return-void

    .line 2112
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method queryColpResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2116
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    throw p1
.end method

.method public queryColrResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2123
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2124
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    if-eqz p1, :cond_0

    .line 2132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2133
    nop

    .line 2134
    return-void

    .line 2128
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method queryColrResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2133
    throw p1
.end method

.method public rejectCallResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2139
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2140
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2141
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    if-eqz p1, :cond_0

    .line 2147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    nop

    .line 2149
    return-void

    .line 2143
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method rejectCallResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2147
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    throw p1
.end method

.method public requestVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2154
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2156
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    if-eqz p1, :cond_0

    .line 2162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2163
    nop

    .line 2164
    return-void

    .line 2158
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method requestVolteCallMediaChangeResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2162
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2163
    throw p1
.end method

.method public responseVolteCallMediaChangeResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2171
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    if-eqz p1, :cond_0

    .line 2177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    nop

    .line 2179
    return-void

    .line 2173
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method responseVolteCallMediaChangeResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2177
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    throw p1
.end method

.method public sendDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2184
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2185
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2186
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    if-eqz p1, :cond_0

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2188
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method sendDtmfResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2192
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw p1
.end method

.method public sendOptionsCapabilityRequestResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/OptionsResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2200
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2201
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2202
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    if-eqz p1, :cond_0

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    nop

    .line 2210
    return-void

    .line 2204
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method sendOptionsCapabilityRequestResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2208
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    throw p1
.end method

.method public sendRTTMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2215
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2216
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2217
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2218
    if-eqz p1, :cond_0

    .line 2223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2224
    nop

    .line 2225
    return-void

    .line 2219
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method sendRTTMessageResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2224
    throw p1
.end method

.method public sendSipMessageResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2230
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2231
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2232
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x41

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string v1, "Method sendSipMessageResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public sendUssdResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
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
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2247
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x42

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    if-eqz p1, :cond_0

    .line 2253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    nop

    .line 2255
    return-void

    .line 2249
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method sendUssdResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2253
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    throw p1
.end method

.method public separateConnectionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2260
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2261
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2262
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x43

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    if-eqz p1, :cond_0

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    nop

    .line 2270
    return-void

    .line 2264
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method separateConnectionResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2268
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    throw p1
.end method

.method public setBarringPasswordResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2275
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2277
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x44

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    if-eqz p1, :cond_0

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    nop

    .line 2285
    return-void

    .line 2279
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setBarringPasswordResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2283
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    throw p1
.end method

.method public setCallForwardUriResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2291
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2292
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x45

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    if-eqz p1, :cond_0

    .line 2298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2299
    nop

    .line 2300
    return-void

    .line 2294
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setCallForwardUriResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2298
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2299
    throw p1
.end method

.method public setCallWaitingResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2305
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2306
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2307
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x46

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    if-eqz p1, :cond_0

    .line 2313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2314
    nop

    .line 2315
    return-void

    .line 2309
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setCallWaitingResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2313
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2314
    throw p1
.end method

.method public setCarrierImsUserAgentResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2320
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2321
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2322
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x47

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    if-eqz p1, :cond_0

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    nop

    .line 2330
    return-void

    .line 2324
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setCarrierImsUserAgentResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2328
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw p1
.end method

.method public setClirResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2335
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2336
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2337
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x48

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    if-eqz p1, :cond_0

    .line 2343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    nop

    .line 2345
    return-void

    .line 2339
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setClirResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2343
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    throw p1
.end method

.method public setFacilityLockForAppResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2350
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    if-eqz p1, :cond_0

    .line 2359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2360
    nop

    .line 2361
    return-void

    .line 2355
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setFacilityLockForAppResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2360
    throw p1
.end method

.method public setImsInitialAttachApnResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2366
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2367
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2368
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    if-eqz p1, :cond_0

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    nop

    .line 2376
    return-void

    .line 2370
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setImsInitialAttachApnResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2374
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    throw p1
.end method

.method public setImsPcscfAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2381
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2382
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2383
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2384
    if-eqz p1, :cond_0

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    nop

    .line 2391
    return-void

    .line 2385
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setImsPcscfAddressResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2389
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    throw p1
.end method

.method public setImsRegAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2396
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2397
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2398
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    if-eqz p1, :cond_0

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    nop

    .line 2406
    return-void

    .line 2400
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setImsRegAddressResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2404
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    throw p1
.end method

.method public setImsSmscAddressResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2411
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2412
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2413
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    if-eqz p1, :cond_0

    .line 2419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2420
    nop

    .line 2421
    return-void

    .line 2415
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setImsSmscAddressResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2419
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2420
    throw p1
.end method

.method public setImsVoiceCallAvailabilityResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2426
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2427
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2428
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2429
    if-eqz p1, :cond_0

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    nop

    .line 2436
    return-void

    .line 2430
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setImsVoiceCallAvailabilityResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2434
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    throw p1
.end method

.method public setLocalToneResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2698
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2700
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x60

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    if-eqz p1, :cond_0

    .line 2706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    nop

    .line 2708
    return-void

    .line 2702
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setLocalToneResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2706
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    throw p1
.end method

.method public setMuteResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2441
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2442
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2443
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2444
    if-eqz p1, :cond_0

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    nop

    .line 2451
    return-void

    .line 2445
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setMuteResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2449
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    throw p1
.end method

.method public setPAUResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2456
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2457
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2458
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2459
    if-eqz p1, :cond_0

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    nop

    .line 2466
    return-void

    .line 2460
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setPAUResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw p1
.end method

.method public setRTTChannelEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2471
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2472
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2473
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x51

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string v1, "Method setRTTChannelEnableResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

.method public setRTTEnableResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
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
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2487
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2488
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    if-eqz p1, :cond_0

    .line 2494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2495
    nop

    .line 2496
    return-void

    .line 2490
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setRTTEnableResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2495
    throw p1
.end method

.method public setSmsBearerResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2501
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2503
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x53

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    if-eqz p1, :cond_0

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    nop

    .line 2511
    return-void

    .line 2505
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setSmsBearerResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2509
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    throw p1
.end method

.method public setUceCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;[Lvendor/unisoc/hardware/radio/ims/UceCapabilitiesResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2516
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2517
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2518
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2519
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x54

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2520
    if-eqz p1, :cond_0

    .line 2525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    nop

    .line 2527
    return-void

    .line 2521
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setUceCapabilitiesResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2525
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    throw p1
.end method

.method public setVideoResolutionResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2532
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2533
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2534
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    if-eqz p1, :cond_0

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    nop

    .line 2542
    return-void

    .line 2536
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setVideoResolutionResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2540
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    throw p1
.end method

.method public startDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2547
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2548
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2549
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x56

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    if-eqz p1, :cond_0

    .line 2555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    nop

    .line 2557
    return-void

    .line 2551
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method startDtmfResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2555
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    throw p1
.end method

.method public stopDtmfResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2562
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2563
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2564
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x57

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2565
    if-eqz p1, :cond_0

    .line 2570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2571
    nop

    .line 2572
    return-void

    .line 2566
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method stopDtmfResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2571
    throw p1
.end method

.method public subscribeForCapabilitiesResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;Lvendor/unisoc/hardware/radio/ims/PublishAndSubscribeResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2577
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2578
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2579
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2580
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x58

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    if-eqz p1, :cond_0

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    nop

    .line 2588
    return-void

    .line 2582
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method subscribeForCapabilitiesResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2586
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    throw p1
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2593
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2594
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2595
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x59

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2596
    if-eqz p1, :cond_0

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    nop

    .line 2603
    return-void

    .line 2597
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method switchWaitingOrHoldingAndActiveResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2601
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    throw p1
.end method

.method public triggerFullNetworkRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2608
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2609
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2610
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    if-eqz p1, :cond_0

    .line 2616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2617
    nop

    .line 2618
    return-void

    .line 2612
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method triggerFullNetworkRegistrationResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2616
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2617
    throw p1
.end method

.method public triggerSipDelegateDeregistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2623
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2624
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2625
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2626
    if-eqz p1, :cond_0

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    nop

    .line 2633
    return-void

    .line 2627
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method triggerSipDelegateDeregistrationResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw p1
.end method

.method public updateCLIPResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2638
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2639
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2640
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    if-eqz p1, :cond_0

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2647
    nop

    .line 2648
    return-void

    .line 2642
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method updateCLIPResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2646
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2647
    throw p1
.end method

.method public updateSipDelegateRegistrationResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2653
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2654
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2655
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    if-eqz p1, :cond_0

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    nop

    .line 2663
    return-void

    .line 2657
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method updateSipDelegateRegistrationResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2661
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    throw p1
.end method

.method public videoPhoneDialResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2668
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2670
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2671
    if-eqz p1, :cond_0

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    nop

    .line 2678
    return-void

    .line 2672
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method videoPhoneDialResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2676
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    throw p1
.end method

.method public volteCallFallBackToVoiceResponse(Lvendor/unisoc/hardware/radio/ims/ImsRadioResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2683
    :try_start_0
    sget-object v1, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2684
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2685
    iget-object p1, p0, Lvendor/unisoc/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2686
    if-eqz p1, :cond_0

    .line 2691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2692
    nop

    .line 2693
    return-void

    .line 2687
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method volteCallFallBackToVoiceResponse is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2691
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2692
    throw p1
.end method
