.class public Lcom/android/imsserviceentitlement/SuwUiFragment;
.super Landroidx/fragment/app/Fragment;
.source "SuwUiFragment.java"


# direct methods
.method public static synthetic $r8$lambda$AoI1-b7TeuzjD-qHGqYzHdno2oI(Lcom/android/imsserviceentitlement/SuwUiFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/SuwUiFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lR_OEjSUCMS3hCeGkfHx80HOvoc(Lcom/android/imsserviceentitlement/SuwUiFragment;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/imsserviceentitlement/SuwUiFragment;->lambda$onCreateView$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private finishActivity(I)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 132
    :cond_0
    check-cast p0, Lcom/android/imsserviceentitlement/WfcActivationUi;

    invoke-interface {p0, p1}, Lcom/android/imsserviceentitlement/WfcActivationUi;->setResultAndFinish(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(ILandroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/SuwUiFragment;->finishActivity(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/SuwUiFragment;->finishActivity(I)V

    return-void
.end method

.method public static newInstance(IIZIII)Lcom/android/imsserviceentitlement/SuwUiFragment;
    .locals 3

    .line 51
    new-instance v0, Lcom/android/imsserviceentitlement/SuwUiFragment;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/SuwUiFragment;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TITLE_RES_ID_KEY"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "TEXT_RES_ID_KEY"

    .line 54
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "PROGRESS_BAR_SHOWN_KEY"

    .line 55
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "PRIMARY_BUTTON_TEXT_ID_KEY"

    .line 56
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "PRIMARY_BUTTON_RESULT_KEY"

    .line 58
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SECONDARY_BUTTON_TEXT_ID_KEY"

    .line 59
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 68
    sget p3, Lcom/android/imsserviceentitlement/R$layout;->fragment_suw_ui:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "TITLE_RES_ID_KEY"

    .line 71
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string v1, "TEXT_RES_ID_KEY"

    .line 72
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "PROGRESS_BAR_SHOWN_KEY"

    .line 73
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "PRIMARY_BUTTON_TEXT_ID_KEY"

    .line 74
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PRIMARY_BUTTON_RESULT_KEY"

    .line 75
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "SECONDARY_BUTTON_TEXT_ID_KEY"

    .line 76
    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 78
    sget v0, Lcom/android/imsserviceentitlement/R$id;->setup_wizard_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz p3, :cond_0

    .line 80
    invoke-virtual {v0, p3}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 83
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/GlifLayout;->setProgressBarShown(Z)V

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v2, 0x80

    invoke-virtual {p3, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    if-eqz v1, :cond_2

    .line 90
    sget p3, Lcom/android/imsserviceentitlement/R$id;->entry_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :cond_2
    const-class p3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p3

    check-cast p3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz v3, :cond_3

    .line 97
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/imsserviceentitlement/SuwUiFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v4}, Lcom/android/imsserviceentitlement/SuwUiFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/SuwUiFragment;I)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/imsserviceentitlement/R$style;->SudGlifButton_Primary:I

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 97
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 106
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/imsserviceentitlement/SuwUiFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/imsserviceentitlement/SuwUiFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/imsserviceentitlement/SuwUiFragment;)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget p2, Lcom/android/imsserviceentitlement/R$style;->SudGlifButton_Primary:I

    .line 110
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 106
    invoke-virtual {p3, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    :cond_4
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROGRESS_BAR_SHOWN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 123
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
