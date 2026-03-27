.class public abstract Lcom/keephealth/android/base/BaseMvvMNewFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseMvvMNewFragment.java"

# interfaces
.implements Lcom/keephealth/android/util/PermissionUtil$RequsetResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/keephealth/android/util/PermissionUtil$RequsetResult;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected binding:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private permissionUtil:Lcom/keephealth/android/util/PermissionUtil;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$showToast$0(Ljava/lang/String;)V
    .registers 1

    .line 88
    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract createObserver()V
.end method

.method public getBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->binding:Landroidx/viewbinding/ViewBinding;

    return-object v0
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

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->TAG:Ljava/lang/String;

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

    .line 70
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method protected initData()V
    .registers 1

    return-void
.end method

.method protected abstract initView()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->binding:Landroidx/viewbinding/ViewBinding;

    .line 37
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->initView()V

    .line 38
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->initData()V

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->createObserver()V

    .line 40
    iget-object p1, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .registers 1

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 84
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->binding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    if-nez v0, :cond_11

    .line 95
    new-instance v0, Lcom/keephealth/android/util/PermissionUtil;

    invoke-direct {v0}, Lcom/keephealth/android/util/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    .line 96
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/PermissionUtil;->setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V

    .line 98
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/base/BaseMvvMNewFragment;->permissionUtil:Lcom/keephealth/android/util/PermissionUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

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

.method public showLoading()V
    .registers 4

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/base/BaseMvvMNewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/keephealth/android/base/BaseMvvMNewFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
