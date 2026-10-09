.class public Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBase"
.end annotation


# static fields
.field protected static final JSON_SEP:Ljava/lang/String; = ";"


# instance fields
.field private mDstIPv4:[Ljava/lang/String;

.field private mDstIPv6:[Ljava/lang/String;

.field private mIPv4Index:I

.field private mIPv6Index:I

.field private mLocalIPv4:Ljava/lang/String;

.field private mLocalIPv6:Ljava/lang/String;

.field private mUsedDstIP:Ljava/lang/String;

.field private mUsedLocalIP:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv4Index:I

    .line 498
    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv6Index:I

    .line 504
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv4:Ljava/lang/String;

    .line 505
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv6:Ljava/lang/String;

    .line 506
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    .line 507
    iput-object p4, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private getDstIPv4()Ljava/lang/String;
    .locals 3

    .line 553
    nop

    .line 554
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv4Index:I

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 555
    aget-object v1, v1, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv4Index:I

    goto :goto_0

    .line 554
    :cond_0
    const/4 v1, 0x0

    .line 558
    :goto_0
    return-object v1
.end method

.method private getDstIPv6()Ljava/lang/String;
    .locals 3

    .line 562
    nop

    .line 563
    iget v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv6Index:I

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 564
    aget-object v1, v1, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv6Index:I

    goto :goto_0

    .line 563
    :cond_0
    const/4 v1, 0x0

    .line 567
    :goto_0
    return-object v1
.end method

.method private getLocalIPv4()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv4:Ljava/lang/String;

    return-object v0
.end method

.method private getLocalIPv6()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv6:Ljava/lang/String;

    return-object v0
.end method

.method public static isIPv4(Ljava/lang/String;)Z
    .locals 1

    .line 585
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isIPv4Valid()Z
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv4Index:I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIPv6Valid()Z
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv6:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mIPv6Index:I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurUsedDstIP()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mUsedDstIP:Ljava/lang/String;

    return-object v0
.end method

.method public getCurUsedLocalIP()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mUsedLocalIP:Ljava/lang/String;

    return-object v0
.end method

.method public getDstIP(Z)Ljava/lang/String;
    .locals 0

    .line 528
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->getDstIPv4()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->getDstIPv6()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mUsedDstIP:Ljava/lang/String;

    .line 529
    return-object p1
.end method

.method public getLocalIP(Z)Ljava/lang/String;
    .locals 0

    .line 523
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->getLocalIPv4()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->getLocalIPv6()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mUsedLocalIP:Ljava/lang/String;

    .line 524
    return-object p1
.end method

.method public getValidIPVersion(Z)I
    .locals 2

    .line 533
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->isIPv4Valid()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->isIPv6Valid()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->isIPv6Valid()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 538
    :cond_2
    invoke-direct {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->isIPv4Valid()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 541
    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isCurUsedIPv4()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mUsedLocalIP:Ljava/lang/String;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->isIPv4(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localIPv4["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", localIPv6["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mLocalIPv6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    const-string v2, "] = "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 594
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", dstIPv4["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv4:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 599
    nop

    :goto_1
    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_1

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", dstIPv6["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->mDstIPv6:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 603
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
