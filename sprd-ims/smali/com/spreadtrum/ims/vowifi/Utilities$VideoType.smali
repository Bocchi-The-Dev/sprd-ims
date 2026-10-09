.class public Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoType"
.end annotation


# static fields
.field public static final NATIVE_VIDEO_TYPE_BIDIRECT:I = 0x3

.field public static final NATIVE_VIDEO_TYPE_BROADCAST_ONLY:I = 0x1

.field public static final NATIVE_VIDEO_TYPE_NONE:I = 0x0

.field public static final NATIVE_VIDEO_TYPE_RECEIVED_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallType(I)I
    .locals 1

    .line 1284
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 1295
    return v0

    .line 1292
    :pswitch_0
    const/4 p0, 0x4

    return p0

    .line 1290
    :pswitch_1
    const/4 p0, 0x6

    return p0

    .line 1288
    :pswitch_2
    const/4 p0, 0x5

    return p0

    .line 1286
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNativeVideoType(I)I
    .locals 1

    .line 1244
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1255
    :pswitch_0
    return v0

    .line 1250
    :pswitch_1
    const/4 p0, 0x2

    return p0

    .line 1248
    :pswitch_2
    const/4 p0, 0x1

    return p0

    .line 1252
    :pswitch_3
    const/4 p0, 0x3

    return p0

    .line 1246
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getNativeVideoType(Landroid/telecom/VideoProfile;)I
    .locals 2

    .line 1259
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1260
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to get the native video type as video profile is null."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v0

    .line 1264
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    .line 1265
    if-eqz v1, :cond_3

    .line 1266
    invoke-virtual {p0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    .line 1267
    if-eqz v0, :cond_1

    .line 1268
    const/4 p0, 0x3

    return p0

    .line 1270
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result p0

    .line 1271
    if-eqz p0, :cond_2

    .line 1272
    const/4 p0, 0x1

    return p0

    .line 1274
    :cond_2
    const/4 p0, 0x2

    return p0

    .line 1279
    :cond_3
    return v0
.end method

.method public static getVideoProfile(I)Landroid/telecom/VideoProfile;
    .locals 1

    .line 1299
    nop

    .line 1300
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1311
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1308
    :pswitch_1
    const/4 v0, 0x2

    .line 1309
    goto :goto_0

    .line 1305
    :pswitch_2
    const/4 v0, 0x1

    .line 1306
    goto :goto_0

    .line 1302
    :pswitch_3
    nop

    .line 1303
    nop

    .line 1315
    :goto_0
    new-instance p0, Landroid/telecom/VideoProfile;

    invoke-direct {p0, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs isInAcceptList(I[I)Z
    .locals 4

    .line 1341
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 1342
    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1341
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    return v1
.end method

.method public static updateAccept(II)Z
    .locals 1

    .line 1319
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 1337
    const/4 p0, 0x0

    return p0

    .line 1331
    :pswitch_0
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    invoke-static {p1, p0}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->isInAcceptList(I[I)Z

    move-result p0

    return p0

    .line 1327
    :pswitch_1
    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_1

    invoke-static {p1, p0}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->isInAcceptList(I[I)Z

    move-result p0

    return p0

    .line 1321
    :pswitch_2
    new-array p0, v0, [I

    fill-array-data p0, :array_2

    invoke-static {p1, p0}, Lcom/spreadtrum/ims/vowifi/Utilities$VideoType;->isInAcceptList(I[I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
