.class public Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;
.super Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterConfig"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 662
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase-IA;)V

    .line 663
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;
    .locals 3

    .line 642
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get the s2b ip address from localIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pcscfIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pcscfIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usedPcscfAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ";"

    if-eqz v0, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 650
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 651
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 652
    new-instance p3, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p3

    .line 654
    :cond_2
    const/4 p3, 0x1

    invoke-static {p2, p4, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->rebuildAddr([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p2

    .line 655
    const/4 p3, 0x0

    invoke-static {v1, p4, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->rebuildAddr([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p3

    .line 656
    new-instance p4, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p4
.end method

.method private static rebuildAddr([Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    .line 679
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 680
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->isIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_2

    .line 684
    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    .line 687
    :cond_1
    array-length v1, p0

    add-int/2addr v1, p2

    new-array p2, v1, [Ljava/lang/String;

    .line 688
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 689
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    aget-object p2, p0, v0

    .line 691
    aput-object p1, p0, v0

    .line 692
    aput-object p2, p0, v1

    .line 693
    return-object p0

    .line 695
    :cond_2
    aget-object v2, p0, v1

    aput-object v2, p2, v1

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_3
    array-length p0, p0

    aput-object p1, p2, p0

    .line 700
    return-object p2

    .line 685
    :cond_4
    :goto_1
    new-array p0, p2, [Ljava/lang/String;

    aput-object p1, p0, v0

    return-object p0

    .line 681
    :cond_5
    :goto_2
    return-object p0
.end method


# virtual methods
.method public getCurUsedPcscfIP()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getCurUsedDstIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfIP(Z)Ljava/lang/String;
    .locals 0

    .line 670
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/vowifi/Utilities$RegisterConfig;->getDstIP(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/spreadtrum/ims/vowifi/Utilities$ConfigBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
