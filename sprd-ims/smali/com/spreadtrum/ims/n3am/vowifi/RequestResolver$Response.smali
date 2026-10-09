.class Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;
.super Ljava/lang/Object;
.source "RequestResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field public mMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

.field public mRequestMsgId:I

.field public mResponseMsg:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;ILcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mRequestMsgId:I

    .line 267
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mResponseMsg:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    .line 268
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 271
    iput p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mRequestMsgId:I

    .line 272
    iput-object p3, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mResponseMsg:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    .line 273
    iput-object p4, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    .line 274
    return-void
.end method


# virtual methods
.method public addRspAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)V
    .locals 1

    .line 277
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mResponseMsg:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;->addAttr(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsgAttr;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public send()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mMsgChannel:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;->mResponseMsg:Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiChannel;->sendMsg(Lcom/spreadtrum/ims/n3am/srmi/SrmiManager$SrmiMsg;)V

    .line 282
    return-void
.end method
