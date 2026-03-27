.class public abstract Lcom/keephealth/android/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/keephealth/android/util/PermissionUtil$RequsetResult;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected activity:Landroidx/fragment/app/FragmentActivity;

.field protected isHidden:Z

.field protected mBundle:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mRootView:Landroid/view/View;

.field private permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/keephealth/android/base/BaseFragment;->isHidden:Z

    return-void
.end method

.method static synthetic lambda$showToast$0(Ljava/lang/String;)V
    .registers 1

    .line 165
    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2

    return-void
.end method

.method public final handleMessageInner(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ggrd3 handleMessage: \u6536\u5230\u6d88\u606f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

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

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->mBundle:Landroid/os/Bundle;

    .line 91
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseFragment;->initBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 98
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 99
    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->unbinder:Lbutterknife/Unbinder;

    .line 101
    new-instance p1, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {p1}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 102
    invoke-virtual {p1, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->initView()V

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->initData()V

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_a

    .line 154
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 155
    :cond_a
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 80
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 53
    iput-boolean p1, p0, Lcom/keephealth/android/base/BaseFragment;->isHidden:Z

    if-nez p1, :cond_b

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->onVisiable()V

    goto :goto_e

    .line 57
    :cond_b
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->oninVisiable()V

    :goto_e
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 161
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->oninVisiable()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    if-nez v0, :cond_11

    .line 172
    new-instance v0, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 173
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/base/BaseFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 71
    iget-boolean v0, p0, Lcom/keephealth/android/base/BaseFragment;->isHidden:Z

    if-nez v0, :cond_25

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->onVisiable()V

    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->oninVisiable()V

    return-void
.end method

.method protected onVisiable()V
    .registers 1

    return-void
.end method

.method public oninVisiable()V
    .registers 1

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 2

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 2

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/base/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/keephealth/android/base/BaseFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
