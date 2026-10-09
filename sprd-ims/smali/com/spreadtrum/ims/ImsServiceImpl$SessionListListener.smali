.class Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;
.super Ljava/lang/Object;
.source "ImsServiceImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/ImsServiceCallTracker$SessionListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionConnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 1662
    return-void
.end method

.method public onSessionDisonnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 1666
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmImsServiceCallTracker(Lcom/spreadtrum/ims/ImsServiceImpl;)Lcom/spreadtrum/ims/ImsServiceCallTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceCallTracker;->isSessionListEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1667
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-static {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->-$$Nest$fgetmIsSingleImsStack(Lcom/spreadtrum/ims/ImsServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1668
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsServiceImpl;->setSrvccState(I)V

    goto :goto_0

    .line 1670
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$SessionListListener;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ImsServiceImpl;->notifySessionEmpty()V

    .line 1673
    :cond_1
    :goto_0
    return-void
.end method
