.class public Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;
.super Landroid/app/Activity;
.source "AcsProvisioningAlertDialog.java"


# static fields
.field private static final COUNTDOWN_INTERVAL_MSEC:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "AcsProvisioningAlertDialog"


# instance fields
.field private mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mErrorButtonClickListener:Landroid/view/View$OnClickListener;

.field private mErrorLayout:Landroid/widget/LinearLayout;

.field private mMsisdn:Landroid/widget/TextView;

.field private mNormalButtonClickListener:Landroid/view/View$OnClickListener;

.field private mNormalCase:Ljava/lang/Boolean;

.field private mOkNormalLayout:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMsisdn(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mMsisdn:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountDownTimer(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorCase(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->showErrorCase()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNormalCase(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->showNormalCase()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    .line 55
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$1;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalButtonClickListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$2;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$3;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mErrorButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 165
    const-string v0, "AcsProvisioningAlertDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method private showErrorCase()V
    .locals 2

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    .line 133
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mOkNormalLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    return-void
.end method

.method private showNormalCase()V
    .locals 2

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    .line 139
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mErrorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mOkNormalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 145
    const-string v0, "User exited the MSISDN dialog!"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->log(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->getInstance()Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningMsisdnInput;->responseReceived(Lcom/spreadtrum/ims/acs/ContactId;)V

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->setContentView(I)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->setFinishOnTouchOutside(Z)V

    .line 92
    iput-object p0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msisdn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spreadtrum/ims/acs/ContactId;

    .line 95
    const v1, 0x7f020001

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mErrorLayout:Landroid/widget/LinearLayout;

    .line 96
    const v1, 0x7f020003

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mOkNormalLayout:Landroid/widget/LinearLayout;

    .line 97
    const v1, 0x7f020002

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mMsisdn:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f020004

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 99
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/high16 v1, 0x7f020000

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f020005

    invoke-virtual {p0, v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mErrorButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;

    const-wide/32 v5, 0xea60

    const-wide/16 v7, 0x3e8

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;-><init>(Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;JJ)V

    .line 117
    invoke-virtual {v1}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog$4;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const-string v1, "mNormalCase"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->showNormalCase()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->showErrorCase()V

    .line 126
    :goto_0
    if-eqz v0, :cond_2

    .line 127
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mMsisdn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/acs/ContactId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/AcsProvisioningAlertDialog;->mNormalCase:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "mNormalCase"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method
