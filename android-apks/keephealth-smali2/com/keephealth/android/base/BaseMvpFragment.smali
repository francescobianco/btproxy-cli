.class public abstract Lcom/keephealth/android/base/BaseMvpFragment;
.super Lcom/keephealth/android/base/BaseFragment;
.source "BaseMvpFragment.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/keephealth/android/base/BasePersenter;",
        ">",
        "Lcom/keephealth/android/base/BaseFragment;",
        "Lcom/keephealth/android/base/IBaseView;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected activity:Landroidx/fragment/app/FragmentActivity;

.field protected mBundle:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPresenter:Lcom/keephealth/android/base/BasePersenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRootView:Landroid/view/View;

.field private permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseFragment;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method public goBack()V
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 155
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected initData()V
    .registers 1

    return-void
.end method

.method protected initView()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 37
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const/4 p3, 0x0

    .line 70
    invoke-static {p0, p3}, Lcom/keephealth/android/util/CnWinUtil;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/BasePersenter;

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_17

    .line 73
    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/BasePersenter;->attachView(Lcom/keephealth/android/base/IBaseView;)V

    .line 74
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_42

    .line 77
    iget-object p2, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_42

    .line 80
    :cond_29
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mRootView:Landroid/view/View;

    .line 81
    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->unbinder:Lbutterknife/Unbinder;

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->TAG:Ljava/lang/String;

    const-string p2, "OncreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initData()V

    .line 91
    new-instance p1, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {p1}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 92
    invoke-virtual {p1, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onDestroy()V

    .line 130
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->hideLoading()V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_d

    .line 132
    invoke-virtual {v0}, Lcom/keephealth/android/base/BasePersenter;->detachView()V

    .line 134
    :cond_d
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_17

    .line 136
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_17
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 124
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 48
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onPause()V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    if-nez v0, :cond_11

    .line 56
    new-instance v0, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 57
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 59
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvpFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 43
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onResume()V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7533\u8bf7mvp\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fr33e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7533\u8bf7mvp\u6210\u529f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fr33e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showLoading()V
    .registers 4

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showLoadingFalse()V
    .registers 4

    .line 150
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public showNetError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
