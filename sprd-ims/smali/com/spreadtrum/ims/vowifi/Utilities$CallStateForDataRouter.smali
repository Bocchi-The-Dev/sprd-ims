.class public Lcom/spreadtrum/ims/vowifi/Utilities$CallStateForDataRouter;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStateForDataRouter"
.end annotation


# static fields
.field public static final NONE:I = 0x2

.field public static final VOLTE:I = 0x0

.field public static final VOWIFI:I = 0x1

.field public static final VOWIFI_VIDEO:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDRStateString(I)Ljava/lang/String;
    .locals 0

    .line 382
    packed-switch p0, :pswitch_data_0

    .line 393
    const/4 p0, 0x0

    return-object p0

    .line 388
    :pswitch_0
    const-string p0, "vowifi[video]"

    return-object p0

    .line 390
    :pswitch_1
    const-string p0, "none"

    return-object p0

    .line 386
    :pswitch_2
    const-string p0, "vowifi[audio]"

    return-object p0

    .line 384
    :pswitch_3
    const-string p0, "volte"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
