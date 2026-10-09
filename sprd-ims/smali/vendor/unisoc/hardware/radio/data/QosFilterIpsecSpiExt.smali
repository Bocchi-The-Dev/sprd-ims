.class public final Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;
.super Ljava/lang/Object;
.source "QosFilterIpsecSpiExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final noinit:I = 0x0

.field public static final value:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    nop

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_value:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    .line 25
    iput-object p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0

    .line 132
    iput p1, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    .line 133
    iput-object p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_value:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3

    .line 124
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    const-string p1, "value"

    return-object p1

    .line 125
    :pswitch_1
    const-string p1, "noinit"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static noinit(Z)Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;
    .locals 2

    .line 35
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static value(I)Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;
    .locals 2

    .line 50
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->getTag()I

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getNoinit()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_assertTag(I)V

    .line 40
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 29
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    .line 97
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_set(ILjava/lang/Object;)V

    .line 99
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNoinit(Z)V
    .locals 1

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_set(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->_tag:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosFilterIpsecSpiExt;->getNoinit()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    nop

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
