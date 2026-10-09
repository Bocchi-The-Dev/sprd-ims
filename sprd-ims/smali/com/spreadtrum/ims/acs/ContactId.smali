.class public Lcom/spreadtrum/ims/acs/ContactId;
.super Ljava/lang/Object;
.source "ContactId.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/spreadtrum/ims/acs/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/spreadtrum/ims/acs/ContactId$1;

    invoke-direct {v0}, Lcom/spreadtrum/ims/acs/ContactId$1;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/acs/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 119
    return v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 122
    return v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 125
    return v1

    .line 127
    :cond_2
    check-cast p1, Lcom/spreadtrum/ims/acs/ContactId;

    .line 128
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 129
    iget-object p1, p1, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 130
    return v1

    .line 132
    :cond_3
    iget-object p1, p1, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 133
    return v1

    .line 135
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 108
    nop

    .line 109
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 110
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget-object p2, p0, Lcom/spreadtrum/ims/acs/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
