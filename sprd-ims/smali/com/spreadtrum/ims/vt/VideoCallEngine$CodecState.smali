.class public final enum Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;
.super Ljava/lang/Enum;
.source "VideoCallEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodecState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

.field public static final enum CODEC_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

.field public static final enum CODEC_IDLE:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

.field public static final enum CODEC_OPEN:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

.field public static final enum CODEC_START:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 113
    new-instance v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    const-string v1, "CODEC_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->CODEC_IDLE:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    .line 114
    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    const-string v3, "CODEC_OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->CODEC_OPEN:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    .line 115
    new-instance v3, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    const-string v5, "CODEC_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->CODEC_START:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    .line 116
    new-instance v5, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    const-string v7, "CODEC_CLOSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->CODEC_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    .line 112
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->$VALUES:[Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;
    .locals 1

    .line 112
    const-class v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;
    .locals 1

    .line 112
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->$VALUES:[Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallEngine$2;->$SwitchMap$com$spreadtrum$ims$vt$VideoCallEngine$CodecState:[I

    invoke-virtual {p0}, Lcom/spreadtrum/ims/vt/VideoCallEngine$CodecState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "CODEC_IDLE"

    packed-switch v0, :pswitch_data_0

    .line 129
    return-object v1

    .line 127
    :pswitch_0
    const-string v0, "CODEC_CLOSE"

    return-object v0

    .line 125
    :pswitch_1
    const-string v0, "CODEC_START"

    return-object v0

    .line 123
    :pswitch_2
    const-string v0, "CODEC_OPEN"

    return-object v0

    .line 121
    :pswitch_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
