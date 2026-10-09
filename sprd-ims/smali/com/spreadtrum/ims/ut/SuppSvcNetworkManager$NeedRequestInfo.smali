.class Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;
.super Ljava/lang/Object;
.source "SuppSvcNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NeedRequestInfo"
.end annotation


# instance fields
.field message:Landroid/os/Message;

.field final subId:I

.field final synthetic this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;ILandroid/os/Message;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->this$0:Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p2, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->subId:I

    .line 104
    iput-object p3, p0, Lcom/spreadtrum/ims/ut/SuppSvcNetworkManager$NeedRequestInfo;->message:Landroid/os/Message;

    .line 105
    return-void
.end method
