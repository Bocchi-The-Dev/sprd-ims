.class Lcom/spreadtrum/ims/ImsAdapterService$3;
.super Lcom/android/ims/internal/IImsUtEx$Stub;
.source "ImsAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsAdapterService;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsAdapterService;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ImsAdapter;->changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCallForwardingOption(IIILjava/lang/String;)I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ImsAdapter;->getCallForwardingOption(IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    const-string v1, "com.spreadtrum.ims.permisson.IMS_COMMON"

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsAdapterService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 646
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 647
    invoke-static {}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IImsUtEx-> permission denied !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 p1, 0x0

    return p1

    .line 650
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsUtEx$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I
    .locals 9

    .line 661
    move-object v0, p0

    iget-object v0, v0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/spreadtrum/ims/ImsAdapter;->setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/spreadtrum/ims/ImsAdapterService$3;->this$0:Lcom/spreadtrum/ims/ImsAdapterService;

    invoke-static {v0}, Lcom/spreadtrum/ims/ImsAdapterService;->-$$Nest$fgetmImsAdapter(Lcom/spreadtrum/ims/ImsAdapterService;)Lcom/spreadtrum/ims/ImsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ImsAdapter;->setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V

    .line 683
    return-void
.end method
