.class public Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingAction"
.end annotation


# static fields
.field private static final RETRY_AFTER_MILLIS:I = 0x3a98


# instance fields
.field public _action:I

.field public _name:Ljava/lang/String;

.field public _params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public _retryAfterMillis:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_retryAfterMillis:I

    .line 1088
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_name:Ljava/lang/String;

    .line 1089
    iput p3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_action:I

    .line 1090
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    .line 1091
    if-eqz p4, :cond_0

    .line 1092
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    .line 1093
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_params:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1096
    :cond_0
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The action \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' do not contains the params."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 1083
    const/16 v0, 0x3a98

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;-><init>(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 1084
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingAction [_retryAfterMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_retryAfterMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$PendingAction;->_action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
