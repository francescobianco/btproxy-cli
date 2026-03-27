.class public abstract Lcom/keephealth/android/base/refresh/BaseRefreshFragment;
.super Lcom/keephealth/android/base/BaseFragment;
.source "BaseRefreshFragment.java"

# interfaces
.implements Lcom/keephealth/android/base/refresh/BaseListView;
.implements Lcom/keephealth/android/base/IBaseView;
.implements Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;
.implements Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Presenter:",
        "Lcom/keephealth/android/base/refresh/BaseListPersenter;",
        "Model:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/keephealth/android/base/BaseFragment;",
        "Lcom/keephealth/android/base/refresh/BaseListView<",
        "TModel;>;",
        "Lcom/keephealth/android/base/IBaseView;",
        "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;",
        "Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;"
    }
.end annotation


# instance fields
.field flBottom:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field flTop:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field protected mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter<",
            "TModel;>;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field

.field protected mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract getAdapter()Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter<",
            "TModel;>;"
        }
    .end annotation
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c00fe

    return v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 3

    .line 171
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public goBack()V
    .registers 1

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 193
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method protected initData()V
    .registers 3

    .line 99
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->initData()V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    new-instance v1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected initView()V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setSuperRefreshLayoutListener(Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->getAdapter()Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v1, -0xff0100

    const v2, -0xff0001

    const/high16 v3, -0x10000

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method synthetic lambda$initData$0$com-keephealth-android-base-refresh-BaseRefreshFragment()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-nez v0, :cond_b

    return-void

    .line 104
    :cond_b
    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onRefreshing()V

    return-void
.end method

.method synthetic lambda$onLoadMore$1$com-keephealth-android-base-refresh-BaseRefreshFragment()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onComplete()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/keephealth/android/util/CnWinUtil;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/refresh/BaseListPersenter;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->attachView(Lcom/keephealth/android/base/IBaseView;)V

    .line 63
    :cond_e
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 163
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-eqz v0, :cond_a

    .line 165
    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->detachView()V

    .line 167
    :cond_a
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onItemClick(IJ)V
    .registers 4

    .line 110
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 112
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->onItemClick(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method protected onItemClick(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;I)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onLoadMore()V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/base/refresh/BaseRefreshFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onRefreshSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->resetItem(Ljava/util/List;)V

    return-void
.end method

.method public onRefreshing()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-nez v0, :cond_5

    return-void

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onRefreshing()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/keephealth/android/base/BaseFragment;->onResume()V

    return-void
.end method

.method public setCanLoadmore(Z)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setCanLoadMore(Z)V

    return-void
.end method

.method public showLoading()V
    .registers 4

    .line 183
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showLoadingFalse()V
    .registers 4

    .line 188
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showNetError(Ljava/lang/String;)V
    .registers 4

    .line 148
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method

.method public showNoData(I)V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->resetItem(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZI)V

    return-void
.end method

.method public showNoMore()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshFragment;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method
