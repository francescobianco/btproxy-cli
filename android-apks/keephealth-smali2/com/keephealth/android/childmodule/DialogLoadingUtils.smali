.class public Lcom/keephealth/android/childmodule/DialogLoadingUtils;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogLoadingUtils.java"


# static fields
.field static loadingDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dialogDestroy()V
    .registers 1

    .line 42
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 44
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method public static hideLoading()V
    .registers 1

    .line 33
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method static synthetic lambda$showLoading$0()V
    .registers 1

    .line 24
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

.method public static showLoading(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 6

    .line 16
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 17
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f11031d

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :cond_12
    if-eqz p0, :cond_3e

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 21
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00f6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 22
    sget-object v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    new-instance v0, Lcom/keephealth/android/childmodule/DialogLoadingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    :cond_3e
    sget-object p0, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->loadingDialog:Landroid/app/Dialog;

    return-object p0
.end method
