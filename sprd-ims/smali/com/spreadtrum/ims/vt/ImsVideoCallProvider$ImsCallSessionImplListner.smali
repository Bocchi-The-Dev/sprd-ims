.class Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;
.super Ljava/lang/Object;
.source "ImsVideoCallProvider.java"

# interfaces
.implements Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallSessionImplListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected->session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->onVTConnectionDisconnected(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 501
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImplListner(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->removeListener(Lcom/spreadtrum/ims/ImsCallSessionImpl$Listener;)V

    .line 503
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmVTHandler(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmVTHandler(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$VTHandler;->removeMessages(I)V

    .line 506
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-static {v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$fgetmImsCallSessionImpl(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;)Lcom/spreadtrum/ims/ImsCallSessionImpl;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    const-string v0, "onUpdate->session is not match."

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->-$$Nest$mlog(Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;Ljava/lang/String;)V

    .line 512
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->updateNegotiatedCallProfile(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 515
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->handleClearLocalCallProfile(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 516
    iget-object v0, p0, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider$ImsCallSessionImplListner;->this$0:Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vt/ImsVideoCallProvider;->handleVolteCallMediaChange(Lcom/spreadtrum/ims/ImsCallSessionImpl;)V

    .line 517
    return-void
.end method
