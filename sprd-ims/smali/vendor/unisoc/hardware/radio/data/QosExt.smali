.class public final Lvendor/unisoc/hardware/radio/data/QosExt;
.super Ljava/lang/Object;
.source "QosExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/unisoc/hardware/radio/data/QosExt$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/unisoc/hardware/radio/data/QosExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final eps:I = 0x1

.field public static final noinit:I = 0x0

.field public static final nr:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosExt$1;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/data/QosExt$1;-><init>()V

    sput-object v0, Lvendor/unisoc/hardware/radio/data/QosExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    .line 26
    iput-object p2, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lvendor/unisoc/hardware/radio/data/QosExt-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_tagString(I)Ljava/lang/String;

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

    .line 170
    iput p1, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    .line 171
    iput-object p2, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 166
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

    .line 164
    :pswitch_0
    const-string p1, "nr"

    return-object p1

    .line 163
    :pswitch_1
    const-string p1, "eps"

    return-object p1

    .line 162
    :pswitch_2
    const-string p1, "noinit"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2

    .line 147
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 149
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 151
    :cond_1
    return v0
.end method

.method public static eps(Lvendor/unisoc/hardware/radio/data/EpsQosExt;)Lvendor/unisoc/hardware/radio/data/QosExt;
    .locals 2

    .line 51
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosExt;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lvendor/unisoc/hardware/radio/data/QosExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Lvendor/unisoc/hardware/radio/data/QosExt;
    .locals 2

    .line 36
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosExt;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lvendor/unisoc/hardware/radio/data/QosExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static nr(Lvendor/unisoc/hardware/radio/data/NrQosExt;)Lvendor/unisoc/hardware/radio/data/QosExt;
    .locals 2

    .line 66
    new-instance v0, Lvendor/unisoc/hardware/radio/data/QosExt;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lvendor/unisoc/hardware/radio/data/QosExt;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getNr()Lvendor/unisoc/hardware/radio/data/NrQosExt;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosExt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getEps()Lvendor/unisoc/hardware/radio/data/EpsQosExt;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosExt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 139
    nop

    .line 144
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEps()Lvendor/unisoc/hardware/radio/data/EpsQosExt;
    .locals 1

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosExt;->_assertTag(I)V

    .line 56
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    check-cast v0, Lvendor/unisoc/hardware/radio/data/EpsQosExt;

    return-object v0
.end method

.method public getNoinit()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosExt;->_assertTag(I)V

    .line 41
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNr()Lvendor/unisoc/hardware/radio/data/NrQosExt;
    .locals 1

    .line 70
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lvendor/unisoc/hardware/radio/data/QosExt;->_assertTag(I)V

    .line 71
    iget-object v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_value:Ljava/lang/Object;

    check-cast v0, Lvendor/unisoc/hardware/radio/data/NrQosExt;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 30
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    packed-switch v0, :pswitch_data_0

    .line 130
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

    .line 126
    :pswitch_0
    sget-object v1, Lvendor/unisoc/hardware/radio/data/NrQosExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/data/NrQosExt;

    .line 127
    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 121
    :pswitch_1
    sget-object v1, Lvendor/unisoc/hardware/radio/data/EpsQosExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/unisoc/hardware/radio/data/EpsQosExt;

    .line 122
    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 116
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 118
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEps(Lvendor/unisoc/hardware/radio/data/EpsQosExt;)V
    .locals 1

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setNoinit(Z)V
    .locals 1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public setNr(Lvendor/unisoc/hardware/radio/data/NrQosExt;)V
    .locals 1

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lvendor/unisoc/hardware/radio/data/QosExt;->_set(ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 96
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lvendor/unisoc/hardware/radio/data/QosExt;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getNr()Lvendor/unisoc/hardware/radio/data/NrQosExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getEps()Lvendor/unisoc/hardware/radio/data/EpsQosExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p0}, Lvendor/unisoc/hardware/radio/data/QosExt;->getNoinit()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    nop

    .line 108
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
