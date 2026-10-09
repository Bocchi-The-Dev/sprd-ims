.class public Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellularNetInfo"
.end annotation


# instance fields
.field public _age:I

.field public _info:Ljava/lang/String;

.field public _type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 731
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;-><init>(ILjava/lang/String;I)V

    .line 732
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->getVowifiNetworkType(I)I

    move-result p1

    iput p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_type:I

    .line 736
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_info:Ljava/lang/String;

    .line 737
    iput p3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_age:I

    .line 738
    return-void
.end method

.method private getVowifiNetworkType(I)I
    .locals 4

    .line 741
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 756
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/Utilities;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not support this volte network type now, type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return v0

    .line 754
    :pswitch_0
    const/16 p1, 0xa

    return p1

    .line 752
    :pswitch_1
    const/16 p1, 0x9

    return p1

    .line 750
    :pswitch_2
    const/16 p1, 0x8

    return p1

    .line 748
    :pswitch_3
    const/4 p1, 0x7

    return p1

    .line 746
    :pswitch_4
    const/4 p1, 0x6

    return p1

    .line 744
    :pswitch_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestCellularNetInfo()V
    .locals 2

    .line 712
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo$1;

    invoke-direct {v1}, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 727
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 728
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularNetInfo [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CellularNetInfo;->_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
