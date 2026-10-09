.class Lcom/spreadtrum/ims/ImsService$2;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsService;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsService$2;->this$0:Lcom/spreadtrum/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestImsExternalCallStateInfo()V
    .locals 0

    .line 1931
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0

    .line 1923
    return-void
.end method
