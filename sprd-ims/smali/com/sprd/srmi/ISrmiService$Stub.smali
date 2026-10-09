.class public abstract Lcom/sprd/srmi/ISrmiService$Stub;
.super Landroid/os/Binder;
.source "ISrmiService.java"

# interfaces
.implements Lcom/sprd/srmi/ISrmiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/srmi/ISrmiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/srmi/ISrmiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_allocTxMessage:I = 0x5

.field static final TRANSACTION_create:I = 0x3

.field static final TRANSACTION_destroy:I = 0x4

.field static final TRANSACTION_freeRxMessage:I = 0x7

.field static final TRANSACTION_freeTxMessage:I = 0x6

.field static final TRANSACTION_getByteExtra:I = 0xe

.field static final TRANSACTION_getIntExtra:I = 0x10

.field static final TRANSACTION_getShortExtra:I = 0xf

.field static final TRANSACTION_getStringExtra:I = 0x11

.field static final TRANSACTION_getTLV:I = 0x12

.field static final TRANSACTION_putByteExtra:I = 0xa

.field static final TRANSACTION_putIntExtra:I = 0xc

.field static final TRANSACTION_putShortExtra:I = 0xb

.field static final TRANSACTION_putStringExtra:I = 0xd

.field static final TRANSACTION_putTLV:I = 0x13

.field static final TRANSACTION_recvMessage:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "com.sprd.srmi.ISrmiService"

    invoke-virtual {p0, p0, v0}, Lcom/sprd/srmi/ISrmiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiService;
    .locals 2

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    const-string v0, "com.sprd.srmi.ISrmiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sprd/srmi/ISrmiService;

    if-eqz v1, :cond_1

    .line 135
    check-cast v0, Lcom/sprd/srmi/ISrmiService;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sprd/srmi/ISrmiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 141
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    nop

    .line 146
    const/4 v0, 0x1

    const-string v1, "com.sprd.srmi.ISrmiService"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 147
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 157
    packed-switch p1, :pswitch_data_1

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v0

    .line 421
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sprd/srmi/ISrmiService$Stub;->putTLV(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    goto/16 :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/sprd/srmi/ISrmiService$Stub;->getTLV(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    goto/16 :goto_0

    .line 389
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/sprd/srmi/ISrmiService$Stub;->getStringExtra(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    goto/16 :goto_0

    .line 373
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/sprd/srmi/ISrmiService$Stub;->getIntExtra(Ljava/lang/String;III)I

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto/16 :goto_0

    .line 357
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/sprd/srmi/ISrmiService$Stub;->getShortExtra(Ljava/lang/String;III)I

    move-result p1

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_0

    .line 341
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/sprd/srmi/ISrmiService$Stub;->getByteExtra(Ljava/lang/String;III)B

    move-result p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    goto/16 :goto_0

    .line 323
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sprd/srmi/ISrmiService$Stub;->putStringExtra(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto/16 :goto_0

    .line 305
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sprd/srmi/ISrmiService$Stub;->putIntExtra(Ljava/lang/String;IIII)I

    move-result p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    goto/16 :goto_0

    .line 287
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sprd/srmi/ISrmiService$Stub;->putShortExtra(Ljava/lang/String;IIII)I

    move-result p1

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto/16 :goto_0

    .line 269
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sprd/srmi/ISrmiService$Stub;->putByteExtra(Ljava/lang/String;IIIB)I

    move-result p1

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    goto/16 :goto_0

    .line 257
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1, p4}, Lcom/sprd/srmi/ISrmiService$Stub;->recvMessage(Ljava/lang/String;I)I

    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    goto/16 :goto_0

    .line 243
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1, p4, v1}, Lcom/sprd/srmi/ISrmiService$Stub;->sendMessage(Ljava/lang/String;II)I

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    goto/16 :goto_0

    .line 230
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p4, v1}, Lcom/sprd/srmi/ISrmiService$Stub;->freeRxMessage(Ljava/lang/String;II)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_0

    .line 217
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p4, v1}, Lcom/sprd/srmi/ISrmiService$Stub;->freeTxMessage(Ljava/lang/String;II)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_0

    .line 203
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, p4, v1}, Lcom/sprd/srmi/ISrmiService$Stub;->allocTxMessage(Ljava/lang/String;II)I

    move-result p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto :goto_0

    .line 192
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p4}, Lcom/sprd/srmi/ISrmiService$Stub;->destroy(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 180
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1, p4}, Lcom/sprd/srmi/ISrmiService$Stub;->create(Ljava/lang/String;I)I

    move-result p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    goto :goto_0

    .line 171
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sprd/srmi/ISrmiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiCallback;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Lcom/sprd/srmi/ISrmiService$Stub;->unregisterCallback(Lcom/sprd/srmi/ISrmiCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_0

    .line 162
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sprd/srmi/ISrmiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprd/srmi/ISrmiCallback;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/sprd/srmi/ISrmiService$Stub;->registerCallback(Lcom/sprd/srmi/ISrmiCallback;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 441
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
