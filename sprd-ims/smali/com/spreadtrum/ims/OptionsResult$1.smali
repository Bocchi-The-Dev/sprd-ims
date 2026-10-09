.class Lcom/spreadtrum/ims/OptionsResult$1;
.super Ljava/lang/Object;
.source "OptionsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/OptionsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/spreadtrum/ims/OptionsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/spreadtrum/ims/OptionsResult;
    .locals 2

    .line 22
    new-instance v0, Lcom/spreadtrum/ims/OptionsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/spreadtrum/ims/OptionsResult;-><init>(Landroid/os/Parcel;Lcom/spreadtrum/ims/OptionsResult-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/OptionsResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/spreadtrum/ims/OptionsResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/spreadtrum/ims/OptionsResult;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/spreadtrum/ims/OptionsResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/OptionsResult$1;->newArray(I)[Lcom/spreadtrum/ims/OptionsResult;

    move-result-object p1

    return-object p1
.end method
