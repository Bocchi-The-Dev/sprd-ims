.class public Lcom/android/imsserviceentitlement/WfcActivationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "WfcActivationActivity.java"

# interfaces
.implements Lcom/android/imsserviceentitlement/WfcActivationUi;


# instance fields
.field private mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

.field private mWfcWebPortalFragment:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;


# direct methods
.method public static synthetic $r8$lambda$ZsWCx5-doovA9juY4FJaFDnt1Eg(Lcom/android/imsserviceentitlement/WfcActivationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->lambda$showWebview$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kHfSqbcO2ss5tNIib8YYFaAj4qk(Lcom/android/imsserviceentitlement/WfcActivationActivity;IIZIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->lambda$showActivationUi$0(IIZIII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private createDependeny()V
    .locals 3

    const-string v0, "IMSSE-WfcActivationActivity"

    const-string v1, "Loading dependencies..."

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

    if-nez v1, :cond_0

    const-string v1, "Default WfcActivationController initialization"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/android/imsserviceentitlement/ActivityConstants;->getSubId(Landroid/content/Intent;)I

    move-result v0

    .line 148
    new-instance v1, Lcom/android/imsserviceentitlement/WfcActivationController;

    new-instance v2, Lcom/android/imsserviceentitlement/ImsEntitlementApi;

    invoke-direct {v2, p0, v0}, Lcom/android/imsserviceentitlement/ImsEntitlementApi;-><init>(Landroid/content/Context;I)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/android/imsserviceentitlement/WfcActivationController;-><init>(Landroid/content/Context;Lcom/android/imsserviceentitlement/WfcActivationUi;Lcom/android/imsserviceentitlement/ImsEntitlementApi;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showActivationUi$0(IIZIII)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 78
    invoke-static/range {p1 .. p6}, Lcom/android/imsserviceentitlement/SuwUiFragment;->newInstance(IIZIII)Lcom/android/imsserviceentitlement/SuwUiFragment;

    move-result-object p1

    .line 85
    sget p2, Lcom/android/imsserviceentitlement/R$id;->wfc_activation_container:I

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private synthetic lambda$showWebview$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 97
    invoke-static {p1, p2}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcWebPortalFragment:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    .line 98
    sget p0, Lcom/android/imsserviceentitlement/R$id;->wfc_activation_container:I

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private runOnUiThreadIfAlive(Ljava/lang/Runnable;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setSuwTheme()V
    .locals 4

    .line 127
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lcom/android/imsserviceentitlement/R$style;->SudThemeGlifV3_DayNight:I

    goto :goto_0

    .line 129
    :cond_0
    sget v0, Lcom/android/imsserviceentitlement/R$style;->SudThemeGlifV3_Light:I

    .line 130
    :goto_0
    new-instance v1, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    .line 131
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>(Lcom/google/android/setupdesign/util/ThemeResolver;)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    const-string v2, "setupwizard.theme"

    const-string v3, "SudThemeGlifV3_DayNight"

    .line 136
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method


# virtual methods
.method public getController()Lcom/android/imsserviceentitlement/WfcActivationController;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->createDependeny()V

    .line 43
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->setSuwTheme()V

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lcom/android/imsserviceentitlement/R$layout;->activity_wfc_activation:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/imsserviceentitlement/ActivityConstants;->getSubId(Landroid/content/Intent;)I

    .line 49
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->startFlow()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 55
    iget-object p0, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcActivationController:Lcom/android/imsserviceentitlement/WfcActivationController;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/WfcActivationController;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/imsserviceentitlement/WfcActivationActivity;->mWfcWebPortalFragment:Lcom/android/imsserviceentitlement/WfcWebPortalFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/imsserviceentitlement/WfcWebPortalFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setResultAndFinish(I)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResultAndFinish: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSSE-WfcActivationActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public showActivationUi(IIZIII)Z
    .locals 9

    .line 74
    new-instance v8, Lcom/android/imsserviceentitlement/WfcActivationActivity$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/imsserviceentitlement/WfcActivationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/WfcActivationActivity;IIZIII)V

    invoke-direct {p0, v8}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->runOnUiThreadIfAlive(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public showWebview(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 94
    new-instance v0, Lcom/android/imsserviceentitlement/WfcActivationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/imsserviceentitlement/WfcActivationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/imsserviceentitlement/WfcActivationActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/imsserviceentitlement/WfcActivationActivity;->runOnUiThreadIfAlive(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
