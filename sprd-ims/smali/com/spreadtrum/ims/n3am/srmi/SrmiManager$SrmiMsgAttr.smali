.class public Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SrmiMsgAttr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final VALUE_TYPE_INT:I = 0x0

.field public static final VALUE_TYPE_INT8:I = 0x1

.field public static final VALUE_TYPE_STRING:I = 0x2

.field public static final VALUE_TYPE_TLV:I = 0x3


# instance fields
.field private final mAttrId:I

.field private final mAttrName:Ljava/lang/String;

.field private final mType:I

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;

    .line 68
    iput p2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrId:I

    .line 69
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrName:Ljava/lang/String;

    .line 70
    iput p3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mType:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IITT;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;-><init>(Ljava/lang/String;II)V

    .line 75
    iput-object p4, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized getAttrId()I
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttrName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mAttrId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 79
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 78
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 80
    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1
.end method
