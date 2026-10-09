.class public Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;
.super Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.source "IwlanQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IwlanNetworkAvailabilityProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;I)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    .line 372
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;-><init>(Landroid/telephony/data/QualifiedNetworksService;I)V

    .line 373
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->this$0:Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IwlanNetworkAvailabilityProvider close, slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService$IwlanNetworkAvailabilityProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;->-$$Nest$mlog(Lcom/spreadtrum/ims/IwlanQualifiedNetworksService;Ljava/lang/String;)V

    .line 383
    return-void
.end method
