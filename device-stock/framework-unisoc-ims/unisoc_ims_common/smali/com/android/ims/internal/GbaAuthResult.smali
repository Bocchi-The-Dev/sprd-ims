.class public Lcom/android/ims/internal/GbaAuthResult;
.super Ljava/lang/Object;
.source "GbaAuthResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/GbaAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist GBA_FAILURE_REASON_NONE:I = -0x1


# instance fields
.field private blacklist mBtId:Ljava/lang/String;

.field private blacklist mFailureReason:I

.field private blacklist mGbaKey:[B

.field private blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/ims/internal/GbaAuthResult$1;

    invoke-direct {v0}, Lcom/android/ims/internal/GbaAuthResult$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/GbaAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(II[BLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    .line 40
    iput p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    .line 41
    iput-object p4, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    .line 43
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    if-lez v0, :cond_0

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 54
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    .line 56
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/GbaAuthResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/GbaAuthResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBtId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFailureReason()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    return v0
.end method

.method public blacklist getGbaKey()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    return-object v0
.end method

.method public blacklist getToken()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    return v0
.end method

.method public blacklist setBtId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public blacklist setFailureReason(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    .line 72
    return-void
.end method

.method public blacklist setGbaKey([B)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    .line 80
    return-void
.end method

.method public blacklist setToken(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuthResult (mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailureReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGbaKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBtId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 92
    iget p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mToken:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mFailureReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mBtId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 96
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Lcom/android/ims/internal/GbaAuthResult;->mGbaKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 99
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_0
    return-void
.end method
