.class Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;
.super Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;
.source "VideoStateNotifyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateNotifyImpl"
.end annotation


# instance fields
.field private mService:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-direct {p0}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;->mService:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    .line 82
    return-void
.end method


# virtual methods
.method public notifyRtpReceived(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;->mService:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-static {v0, p1, p2}, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->-$$Nest$mnotifyRtpReceived(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;IZ)V

    .line 92
    return-void
.end method

.method public notifyVideoQos(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService$VideoStateNotifyImpl;->mService:Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;->-$$Nest$mnotifyVideoQos(Lcom/spreadtrum/ims/n3am/vowifi/VideoStateNotifyService;IIII)V

    .line 87
    return-void
.end method
