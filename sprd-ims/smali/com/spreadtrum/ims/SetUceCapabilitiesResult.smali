.class public Lcom/spreadtrum/ims/SetUceCapabilitiesResult;
.super Ljava/lang/Object;
.source "SetUceCapabilitiesResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/spreadtrum/ims/SetUceCapabilitiesResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilities:I

.field private mRadioTech:I

.field private mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult$1;

    invoke-direct {v0}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult$1;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    .line 37
    iput p2, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    .line 38
    iput p3, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spreadtrum/ims/SetUceCapabilitiesResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    return v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    return v0
.end method

.method public setCapabilities(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    .line 61
    return-void
.end method

.method public setRadioTech(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    .line 53
    return-void
.end method

.method public setReason(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetUceCapabilitiesResult (mRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 73
    iget p2, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mRadioTech:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p2, p0, Lcom/spreadtrum/ims/SetUceCapabilitiesResult;->mReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
