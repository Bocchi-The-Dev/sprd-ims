.class Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;Landroid/content/Context;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    .line 766
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 767
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 771
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 774
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V

    .line 775
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmScreenRotation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V

    .line 776
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fputmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V

    .line 777
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 782
    if-gez p1, :cond_0

    .line 783
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$fgetmDeviceOrientation(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;)I

    move-result v0

    .line 788
    const/16 v1, 0x15e

    if-ge p1, v1, :cond_4

    const/16 v1, 0xa

    if-gt p1, v1, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    const/16 v1, 0x50

    if-lt p1, v1, :cond_2

    const/16 v1, 0x6e

    if-gt p1, v1, :cond_2

    .line 791
    const/16 v0, 0x5a

    goto :goto_1

    .line 792
    :cond_2
    const/16 v1, 0xaa

    if-lt p1, v1, :cond_3

    const/16 v1, 0xbe

    if-gt p1, v1, :cond_3

    .line 793
    const/16 v0, 0xb4

    goto :goto_1

    .line 794
    :cond_3
    const/16 v1, 0x104

    if-lt p1, v1, :cond_5

    const/16 v1, 0x118

    if-gt p1, v1, :cond_5

    .line 795
    const/16 v0, 0x10e

    goto :goto_1

    .line 789
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 798
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl$MyOrientationListener;->this$0:Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;->-$$Nest$mcalculateAngle(Lcom/spreadtrum/ims/vowifi/ImsVideoCallProviderImpl;I)V

    .line 799
    return-void
.end method
