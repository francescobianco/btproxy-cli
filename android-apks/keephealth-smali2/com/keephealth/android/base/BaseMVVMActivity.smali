.class public abstract Lcom/keephealth/android/base/BaseMVVMActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "BaseMVVMActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createObserver()V
.end method

.method public goBack()V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMVVMActivity;->finish()V

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMVVMActivity;->createObserver()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 19
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMVVMActivity;->hideLoading()V

    .line 21
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public showLoading()V
    .registers 2

    .line 31
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v0, v0}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    :cond_8
    return-void
.end method

.method public showLoadingFalse()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 37
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMVVMActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
