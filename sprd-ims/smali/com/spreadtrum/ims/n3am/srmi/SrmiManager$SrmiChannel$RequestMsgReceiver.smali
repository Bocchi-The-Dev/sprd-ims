.class public abstract Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;
.super Ljava/lang/Object;
.source "SrmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestMsgReceiver"
.end annotation


# instance fields
.field private mMonitorMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([I)V
    .locals 4

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;->mMonitorMsgIds:Ljava/util/ArrayList;

    .line 225
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 231
    iget-object v3, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;->mMonitorMsgIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not provider the monitor message id."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should be more than one monitor msg id."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public needNotify(I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel$RequestMsgReceiver;->mMonitorMsgIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract onReceive(I)V
.end method
