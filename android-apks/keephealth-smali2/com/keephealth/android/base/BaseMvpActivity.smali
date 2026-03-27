.class public abstract Lcom/keephealth/android/base/BaseMvpActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "BaseMvpActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/keephealth/android/base/BasePersenter;",
        ">",
        "Lcom/keephealth/android/base/BaseActivity;",
        "Lcom/keephealth/android/base/IBaseView;"
    }
.end annotation


# instance fields
.field protected mPresenter:Lcom/keephealth/android/base/BasePersenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public goBack()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->finish()V

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 53
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0}, Lcom/keephealth/android/base/BasePersenter;->detachView()V

    .line 28
    :cond_7
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 29
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->hideLoading()V

    .line 30
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onViewCreate()V
    .registers 2

    .line 17
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onViewCreate()V

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lcom/keephealth/android/util/CnWinUtil;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/BasePersenter;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvpActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_11

    .line 20
    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/BasePersenter;->attachView(Lcom/keephealth/android/base/IBaseView;)V

    :cond_11
    return-void
.end method

.method public showLoading()V
    .registers 2

    .line 41
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 42
    invoke-static {p0, v0, v0}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    :cond_8
    return-void
.end method

.method public showLoadingFalse()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 48
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public showNetError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
