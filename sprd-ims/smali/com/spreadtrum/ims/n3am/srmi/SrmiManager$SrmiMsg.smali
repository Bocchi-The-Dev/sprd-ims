.class public Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SrmiMsg"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcceptAttrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field private mKey:Ljava/lang/Integer;

.field private final mMsgId:I

.field private mRetryCount:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const-class v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spreadtrum/ims/n3am/util/Utils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAcceptAttrs:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mRetryCount:Ljava/lang/Integer;

    .line 121
    iput p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mMsgId:I

    .line 124
    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAcceptAttrs:Ljava/util/ArrayList;

    .line 126
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAcceptAttrs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z
    .locals 4

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 167
    sget-object p1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->TAG:Ljava/lang/String;

    const-string v1, "Failed to add srmi message\'s attr as it is null."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0

    .line 171
    :cond_0
    nop

    .line 172
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAcceptAttrs:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAcceptAttrs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 177
    :cond_1
    move v1, v2

    .line 181
    :goto_0
    if-eqz v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return v2

    .line 185
    :cond_2
    sget-object v1, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add the attr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " as it do not acceptable."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method public decreaseRetryCount()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mRetryCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mRetryCount:Ljava/lang/Integer;

    .line 163
    return-void
.end method

.method public getAttrs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/Integer;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mMsgId:I

    return v0
.end method

.method public getRetryCount()Ljava/lang/Integer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mRetryCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasAttribute()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendout()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maybe send the msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    invoke-virtual {v0, p0}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setChannel(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 136
    return-void
.end method

.method public setKey(Ljava/lang/Integer;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mKey:Ljava/lang/Integer;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SrmiMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 202
    if-nez v1, :cond_0

    .line 203
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    :cond_0
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_1
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getAttrName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->mAttrs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 212
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
