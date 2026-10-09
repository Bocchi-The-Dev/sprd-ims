.class Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;
.super Ljava/lang/Object;
.source "AcsProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/acs/AcsProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcsProvisioningResult"
.end annotation


# instance fields
.field UNKNOWN_MSISDN_CODE:I

.field UNKNOWN_REASON_CODE:I

.field mCode:I

.field mContent:Ljava/lang/String;

.field mRetryAfter:J

.field mWaitingForSMSOTP:Z

.field final synthetic this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/acs/AcsProvisioningManager;)V
    .locals 2

    .line 911
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->this$0:Lcom/spreadtrum/ims/acs/AcsProvisioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    const/4 p1, -0x1

    iput p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->UNKNOWN_REASON_CODE:I

    .line 913
    const/4 v0, -0x2

    iput v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->UNKNOWN_MSISDN_CODE:I

    .line 915
    iput p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mCode:I

    .line 916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mRetryAfter:J

    .line 917
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mContent:Ljava/lang/String;

    .line 918
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningManager$AcsProvisioningResult;->mWaitingForSMSOTP:Z

    return-void
.end method
