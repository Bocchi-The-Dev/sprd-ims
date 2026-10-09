.class public Lcom/spreadtrum/ims/OptionsResult;
.super Ljava/lang/Object;
.source "OptionsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/spreadtrum/ims/OptionsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCode:I

.field private mReason:Ljava/lang/String;

.field private mSipCode:I

.field private mTheirCaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/spreadtrum/ims/OptionsResult$1;

    invoke-direct {v0}, Lcom/spreadtrum/ims/OptionsResult$1;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/OptionsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    .line 41
    iput p2, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    .line 42
    iput-object p3, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spreadtrum/ims/OptionsResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/OptionsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSipCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    return v0
.end method

.method public getTheirCaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    .line 59
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSipCode(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    .line 67
    return-void
.end method

.method public setTheirCaps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionsResult (mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTheirCaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 87
    iget p2, p0, Lcom/spreadtrum/ims/OptionsResult;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget p2, p0, Lcom/spreadtrum/ims/OptionsResult;->mSipCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lcom/spreadtrum/ims/OptionsResult;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/spreadtrum/ims/OptionsResult;->mTheirCaps:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 91
    return-void
.end method
