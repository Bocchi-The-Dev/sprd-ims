.class Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    .line 2625
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 2628
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, "onAvailable"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 2629
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 2632
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$NetworkRequestCallback;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const-string v0, "onLost"

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$mlogd(Lcom/spreadtrum/ims/ImsServiceImpl;Ljava/lang/String;)V

    .line 2633
    return-void
.end method
