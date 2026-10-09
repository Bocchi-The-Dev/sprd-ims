.class public final Lvendor/sprd/hardware/radio/ims/V1_0/ImsHandoverType;
.super Ljava/lang/Object;
.source "ImsHandoverType.java"


# static fields
.field public static final IDEL_HANDOVER_TO_VOLTE:I = 0x2

.field public static final IDEL_HANDOVER_TO_VOWIFI:I = 0x1

.field public static final INCALL_HANDOVER_TO_VOLTE:I = 0x4

.field public static final INCALL_HANDOVER_TO_VOWIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    nop

    .line 28
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 29
    const-string v1, "IDEL_HANDOVER_TO_VOWIFI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 33
    const-string v1, "IDEL_HANDOVER_TO_VOLTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v2, v2, 0x2

    .line 36
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 37
    const-string v1, "INCALL_HANDOVER_TO_VOWIFI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v2, v2, 0x3

    .line 40
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 41
    const-string v1, "INCALL_HANDOVER_TO_VOLTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v2, v2, 0x4

    .line 44
    :cond_3
    if-eq p0, v2, :cond_4

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_4
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 10
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 11
    const-string p0, "IDEL_HANDOVER_TO_VOWIFI"

    return-object p0

    .line 13
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 14
    const-string p0, "IDEL_HANDOVER_TO_VOLTE"

    return-object p0

    .line 16
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 17
    const-string p0, "INCALL_HANDOVER_TO_VOWIFI"

    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 20
    const-string p0, "INCALL_HANDOVER_TO_VOLTE"

    return-object p0

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
