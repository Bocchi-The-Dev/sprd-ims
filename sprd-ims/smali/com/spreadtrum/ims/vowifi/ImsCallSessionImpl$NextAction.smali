.class Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;
.super Ljava/lang/Object;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextAction"
.end annotation


# static fields
.field private static final FLAG_INVITE_THIS_CALL:I = 0x1

.field private static final FLAG_MERGE:I = 0x2


# instance fields
.field private _flag:I

.field private _params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_flag(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)I
    .locals 0

    iget p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->_flag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_params(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->_params:Ljava/util/ArrayList;

    return-object p0
.end method

.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 3

    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2945
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->_flag:I

    .line 2946
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->_params:Ljava/util/ArrayList;

    .line 2947
    if-eqz p2, :cond_0

    .line 2948
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 2949
    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$NextAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2952
    :cond_0
    return-void
.end method
