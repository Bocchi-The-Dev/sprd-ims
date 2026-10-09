.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;
.super Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UTAction"
.end annotation


# instance fields
.field public _isExAction:Z

.field public _key:Ljava/lang/Integer;

.field public _needFeedback:Z

.field public _relateUTAction:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

.field public _timeoutMillis:I

.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method public varargs constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 7

    .line 1866
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V

    .line 1867
    return-void
.end method

.method public varargs constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZLjava/lang/String;II[Ljava/lang/Object;)V
    .locals 9

    .line 1871
    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;-><init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V

    .line 1872
    return-void
.end method

.method public varargs constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;ZZLjava/lang/String;IILcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;[Ljava/lang/Object;)V
    .locals 0

    .line 1875
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->this$0:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    .line 1876
    invoke-direct {p0, p4, p5, p8}, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1877
    iput p6, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_timeoutMillis:I

    .line 1878
    iput-boolean p3, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_isExAction:Z

    .line 1879
    iput-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_needFeedback:Z

    .line 1880
    iput-object p7, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;->_relateUTAction:Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UTAction;

    .line 1881
    return-void
.end method
